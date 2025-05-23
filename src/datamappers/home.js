import { db } from "../services/dbClient.js";

export const homeMapper = {
  async getAll() {
    const result = await db.query("SELECT * FROM cafe");
    return result.rows;
  },

  async getNewCafe() {
    const result = await db.query(
      "SELECT * FROM cafe ORDER BY reference DESC LIMIT 3"
    );
    return result.rows;
  },
};
