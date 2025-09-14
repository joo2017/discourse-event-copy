import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "discourse-event-routes",
  initialize() {
    withPluginApi("0.8.7", (api) => {
      // 注册路由
      api.addExtraRoute({
        name: "discourse-post-event-upcoming-events",
        path: "/upcoming-events",
        component: "upcoming-events",
      });
    });
  },
};
