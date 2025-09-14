# frozen_string_literal: true
# name: discourse-event-copy
# about: A complete copy of discourse-calendar event functionality
# version: 1.0.0
# authors: Your Name
# url: https://github.com/yourusername/discourse-event-copy

gem "holidays", "8.4.1", require_name: "holidays"
gem "rrule", "0.4.4"

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

module ::DiscourseCalendar
  PLUGIN_NAME = "discourse-event-copy"
end

module ::DiscoursePostEvent
  PLUGIN_NAME = "discourse-event-copy"
end

after_initialize do
  require_relative "app/controllers/discourse_post_event/discourse_post_event_controller"
  require_relative "app/controllers/discourse_post_event/events_controller"
  require_relative "app/controllers/discourse_post_event/invitees_controller"
  require_relative "app/controllers/discourse_post_event/upcoming_events_controller"
  require_relative "app/models/calendar_event"
  require_relative "app/models/discourse_post_event/event"
  require_relative "app/models/discourse_post_event/event_date"
  require_relative "app/models/discourse_post_event/invitee"
  require_relative "app/serializers/discourse_post_event/event_serializer"
  require_relative "app/serializers/discourse_post_event/event_stats_serializer"
  require_relative "app/serializers/discourse_post_event/event_summary_serializer"
  require_relative "app/serializers/discourse_post_event/invitee_list_serializer"
  require_relative "app/serializers/discourse_post_event/invitee_serializer"
  
  # Add admin menu
  add_admin_route 'admin.calendar', 'calendar'
  
  # Register notification types
  if Discourse.has_needed_version?(Discourse::VERSION::STRING, "2.3.0")
    register_notification_type("event_reminder", 15)
    register_notification_type("event_invitation", 16)
  end
end
