import { db } from "../services/dbClient.js";

export const catalogueMapper = {
  async getAll() {
    const result = await db.query(
      "SELECT cafe.* , origine.pays AS origine FROM cafe JOIN origine ON cafe.id_origine::int = origine.id;"
    );
    return result.rows;
  },

  async getById(id) {
    const result = await db.query("SELECT * FROM cafe WHERE id = $1", [id]);
    return result.rows[0];
  },
};
