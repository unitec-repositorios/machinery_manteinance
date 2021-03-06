# frozen_string_literal: true

module MaintenanceNotificationsHelper
  def self.events
    MaintenanceNotification.pending.map { |m| Event.new(m) }
  end
end
