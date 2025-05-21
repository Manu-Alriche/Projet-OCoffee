import { Router } from "express";
import { homeController } from "../controllers/home.js";
import { catalogueController } from "../controllers/catalogue.js";

export const router = Router();

router.get("/", homeController.homePage);

router.get("/catalogue", catalogueController.cataloguePage);
