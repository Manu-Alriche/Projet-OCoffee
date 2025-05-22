import { db } from "../services/dbClient.js";

export const cafeMapper = {
  async getById(id) {
    const result = await db.query("SELECT * FROM cafe WHERE id = $1", [id]);
    return result.rows[0];
  },

  async getNewCafe() {
    const result = await db.query(
      "SELECT * FROM cafe ORDER BY reference DESC LIMIT 3"
    );
    return result.rows;
  },
};
