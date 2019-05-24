const WebSocket = require('ws');
const mysql = require('mysql');
const EventEmitter = require('events');

const AnnGetter = require('./model/ann/getter');
const WeightsUpdater = require('./model/ann/updateWeights/WeightsUpdater');
const randomWeightsGenerator = require('./randomWeightsGenerator');

const emitter = new EventEmitter();

const server = new WebSocket.Server({port: 3000});

let id = null;

server.on('connection', ws => {
    const dbConnection = mysql.createPool({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'ann_vis'
    });

    dbConnection.getConnection(err => {
        if (err) throw err;
    });


    dbConnection.query(`SELECT id FROM anns`, (err, result) => {
        if (err) throw err;

        ws.send(JSON.stringify(result));
    });

    let interval = null;

    ws.on('message', async message => {
        if (message.split('?')[0] === 'update') {
            id = message.split('?')[1];

            if (!id) return;

            const ann = await AnnGetter.get({ id }, dbConnection);

            ws.send('update?' + JSON.stringify(ann));
        }

        if (message === 'startWeightsUpdate')
            interval = setInterval(()=> randomWeightsGenerator(dbConnection, emitter, id), 500);

        if (message === 'endWeightsUpdate')
            clearInterval(interval);
    });

    emitter.on('weightsUpdate', async ()=>{
        const weightsUpdateData = await WeightsUpdater.get(dbConnection, id);
        ws.send('updateWeights?' + JSON.stringify(weightsUpdateData));
    });

});