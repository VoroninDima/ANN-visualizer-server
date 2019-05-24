class Registry {
    /**
     * @param {string} hash
     * @param {{}} data
     * @throws {Error}
     */
    static updateUser(hash, data) {
        const user = this.getUser(hash);

        this.data.users[hash] = Object.assign(user, data);
    }

    /**
     * @param {string} hash
     * @param {{}} [data]
     */
    static createUser(hash, data = {}) {
        data = Object.assign({ hash }, data);

        this.data.users[hash] = data;
    }

    /**
     * @param {string} hash
     * @throws {Error}
     */
    static checkUserExists(hash) {
        try {
            this.getUser(hash);
        } catch (e) {
            throw new Error(`User does not exist. Hash: ${hash}.`);
        }
    }

    /**
     * @param {string} hash
     * @return {{}}
     * @throws {Error}
     */
    static getUser(hash) {
        const user = this.data.users[hash];

        if (!user)
            throw new Error(`Failed to find user. Hash: ${hash}.`);

        return Object.freeze(user);
    }
}

/**
 * @type {{}}
 * @private
 */
Registry.data = {
    users: {}
};

module.exports = Registry;