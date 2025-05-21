export const catalogueController = {
  error404: (_, res) => {
    res
      .status(404)
      .render("error", { statusCode: 404, message: "Page not found" });
  },

  cataloguePage(_, res) {
    res.render("catalogue");
  },
};
