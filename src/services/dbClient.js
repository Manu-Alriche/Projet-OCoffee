import pg from "pg";

const { Client } = pg;

export const db = new Client(process.env.PGURL);
db.connect();
