import express from "express";
import { router } from "./src/routes/index.js";
import path from "path";
import { fileURLToPath } from "url";

const app = express();
const port = process.env.PORT || 3000;

// Pour __dirname (en ESM)
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Configuration des vues
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "src", "./views"));

// Middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

// Routes
app.use(router);

// Lancer le serveur
app.listen(port, () => {
  console.log(`🚀 Server is running at http://localhost:${port}`);
});
