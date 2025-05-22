import { cafeMapper } from "../datamappers/cafe.js";

export const cafeController = {
  async cafePage(req, res) {
    const id = req.params.id;
    const cafe = await cafeMapper.getById(id);
    if (!cafe) {
      return res
        .status(404)
        .render("error", { statusCode: 404, message: "Cafe not found" });
    }
    res.render("cafe", { cafe });
  },
};
