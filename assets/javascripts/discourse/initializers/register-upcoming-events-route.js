export default {
  name: "register-upcoming-events-route",
  
  initialize(container) {
    // 简单的路由注册，让 Discourse 知道这些路由的存在
    const siteSettings = container.lookup("service:site-settings");
    
    if (siteSettings.discourse_post_event_enabled) {
      // 路由映射文件会自动处理路由注册
      // 这里只需要确保设置正确
    }
  },
};
