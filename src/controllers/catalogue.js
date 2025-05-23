import { catalogueMapper } from "../datamappers/catalogue.js";

export const catalogueController = {
  async cataloguePage(req, res) {
    const cafe = await catalogueMapper.getAll();
    res.locals.style = "catalog";
    res.render("catalogue", { cafe });
  },

  error404: (_, res) => {
    res.locals.style = "home";
    res
      .status(404)
      .render("error", { statusCode: 404, message: "Page not found" });
  },
};
