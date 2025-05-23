import { db } from "../services/dbClient.js";

export const cafeMapper = {
  async getById(id) {
    const result = await db.query(
      `SELECT
    cafe.*,
    origine.pays AS origine,
    array_agg(caracteristique.libelle) AS caracteristique
FROM
    cafe
JOIN
    origine ON cafe.id_origine::int = origine.id
JOIN
    cafe_caracteristique ON cafe.id = cafe_caracteristique.id_cafe
JOIN
    caracteristique ON cafe_caracteristique.id_caracteristique = caracteristique.id
WHERE
    cafe.id = $1
GROUP BY
    cafe.id, origine.id;
    `,
      [id]
    );
    const produit = result.rows[0];
    return produit || null;
  },
};
