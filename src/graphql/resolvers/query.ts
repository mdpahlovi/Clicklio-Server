import Canvas from "../../models/canvas";

export const Query = {
    canvases: async () => await Canvas.find({}),
    canvas: async (parent: any, { code }: { code: string }) => await Canvas.findOne({ code }),
};
