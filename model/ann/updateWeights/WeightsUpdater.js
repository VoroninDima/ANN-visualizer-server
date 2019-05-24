class WeightsUpdater {
    static get(dbConnection, id) {
        const getter = new WeightsUpdater(dbConnection, id);

        return getter.get();
    }
    constructor(dbConnection, id) {
        this.dbConnection = dbConnection;
        this.id = id
    }

    get() {
        const callback = this.dbQuery();
        return new Promise(callback)
    }

    dbQuery() {
        return (success, error) => {
            const sql = this.buildSql();

            this.dbConnection.query(sql, (err, result) => {
                if (err) throw err;

                try {
                    success(result)
                } catch (e) {
                    error(e)
                }
            })
        }
    }

    buildSql() {
        return (`
           SELECT \`weights\` FROM anns WHERE \`id\` = '${this.id}'
        `);
    }
}

module.exports = WeightsUpdater;