import pg from "pg";
import dotenv from "dotenv";

dotenv.config();

const { Client } = pg;

export const db = new Client(process.env.PGURL);
db.connect();
