function r(min, max) {
    return (Math.random() * (max - min) + min).toFixed(1);
}

const randomWeightsGenerator = async (dbConnection, emitter, id) => {
    const selectWights = new Promise ((resolve => {
        return (dbConnection.query(`SELECT \`weights\` FROM \`anns\`WHERE \`id\` = '${id}'`, (err, res) => {
            if (err) throw err;
            const result = JSON.parse(res[0].weights);

            for(let i = 0; i < result.length; i++) {
                for(let j = 0; j < result[i].length; j++) {
                    for(let l = 0; l < result[i][j].length; l++) {
                        let koef = 1;

                        if (r(1,2) > 1.5)
                            koef = -1;

                        result[i][j][l] = result[i][j][l] + koef;
                    }
                }
            }

            resolve(result)
        }))

    }));


    let newWights = await selectWights;

    const sql = `UPDATE \`anns\`
                 SET  \`weights\` = '${JSON.stringify(newWights)}'
                 WHERE \`id\` = '${id}'`;

    dbConnection.query(sql, err => {
        if (err) throw err;
        emitter.emit('weightsUpdate');
    });
};

module.exports = randomWeightsGenerator;

