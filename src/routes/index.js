import { Router } from "express";
import { homeController } from "../controllers/home.js";
import { catalogueController } from "../controllers/catalogue.js";
import { cafeController } from "../controllers/cafe.js";
import { histoireController } from "../controllers/histoire.js";

export const router = Router();

router.get("/", homeController.homePage);

router.get("/catalogue", catalogueController.cataloguePage);

router.get("/catalogue/:id", cafeController.cafePage);

router.get("/histoire", histoireController.histoirePage);

router.use(homeController.error404);
