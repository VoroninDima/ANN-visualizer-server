class Getter {
    /**
     * @param {{id:string}} props
     * @param {Object} dbConnection
     */
    static get(props, dbConnection) {
        const getter = new Getter(props, dbConnection);

        return getter.get();
    }

    /**
     * @param {{id:string}} props
     * @param {Object} dbConnection
     * @private
     */
    constructor(props, dbConnection) {
        /**
         * @type {Readonly<{id:string}>}
         * @private
         */
        this.props = Object.freeze(props);

        /**
         * @type {Object}
         * @private
         */
        this.dbConnection = dbConnection;
    }

    /**
     * @private
     */
    get() {
        const processor = this.getProcessor();

        return new Promise(processor);
    }

    /**
     * @return {Function}
     * @private
     */
    getProcessor() {
        return (success, error) => {
            const sql = this.buildSql();

            this.dbConnection.query(sql, (errorObj, response) => {
                if (errorObj)
                    return error(errorObj);

                try {
                    const responseParsed = Getter.parseDbResponse(response[0]);

                    success(responseParsed);
                } catch (e) {
                    error(e);
                }
            });
        };
    }

    /**
     * @return {string}
     * @private
     */
    buildSql() {
        const {id} = this.props;

        return (`
            SELECT \`weights\`, \`structure\`
                FROM \`anns\`
                WHERE \`id\` = '${id}'
                LIMIT 1
        `);
    }

    /**
     * @param {{weights:string,structure:string}} response
     * @return {{weights:[],structure:{}}}
     * @private
     */
    static parseDbResponse(response) {
        const weights = JSON.parse(response.weights);
        const structure = JSON.parse(response.structure);

        return {
            weights,
            structure
        };
    }
}

module.exports = Getter;