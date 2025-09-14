# frozen_string_literal: true
# name: discourse-event-copy
# about: A complete copy of discourse-calendar event functionality
# version: 1.0.0
# authors: Your Name
# url: https://github.com/yourusername/discourse-event-copy

enabled_site_setting :discourse_post_event_enabled

register_asset "stylesheets/colors.scss"
register_asset "stylesheets/common/discourse-calendar.scss"
register_asset "stylesheets/common/discourse-post-event-bulk-invite-modal.scss"
register_asset "stylesheets/common/discourse-post-event-core-ext.scss"
register_asset "stylesheets/common/discourse-post-event-invitees.scss"
register_asset "stylesheets/common/discourse-post-event-preview.scss"
register_asset "stylesheets/common/discourse-post-event-upcoming-events.scss"
register_asset "stylesheets/common/discourse-post-event.scss"
register_asset "stylesheets/common/post-event-builder.scss"
register_asset "stylesheets/common/upcoming-events-calendar.scss"
register_asset "stylesheets/common/upcoming-events-list.scss"
register_asset "stylesheets/common/user-preferences.scss"
register_asset "stylesheets/desktop/discourse-calendar.scss"
register_asset "stylesheets/desktop/discourse-post-event-invitees.scss"
register_asset "stylesheets/mobile/discourse-post-event-core-ext.scss"
register_asset "stylesheets/mobile/discourse-post-event-invitees.scss"
register_asset "stylesheets/mobile/discourse-post-event.scss"

register_svg_icon "calendar-day"
register_svg_icon "check" 
register_svg_icon "xmark"
register_svg_icon "star"
register_svg_icon "users"
register_svg_icon "location-pin"
register_svg_icon "link"
register_svg_icon "clock"
register_svg_icon "ellipsis"

module ::DiscourseCalendar
  PLUGIN_NAME = "discourse-event-copy"
end

module ::DiscoursePostEvent  
  PLUGIN_NAME = "discourse-event-copy"
end
