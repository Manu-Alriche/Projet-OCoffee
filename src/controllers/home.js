import { homeMapper } from "../datamappers/home.js";

export const homeController = {
  async homePage(req, res) {
    const cafe = await homeMapper.getNewCafe();
    res.render("home", { cafe });
  },

  error404: (_, res) => {
    res
      .status(404)
      .render("error", { statusCode: 404, message: "Page not found" });
  },
};
