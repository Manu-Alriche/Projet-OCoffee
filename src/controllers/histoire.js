export const histoireController = {
  async histoirePage(req, res) {
    res.locals.style = "home";
    res.render("histoire");
  },

  error404: (_, res) => {
    res.locals.style = "home";
    res
      .status(404)
      .render("error", { statusCode: 404, message: "Page not found" });
  },
};
