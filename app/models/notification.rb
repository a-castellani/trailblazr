class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  after_create_commit :send_broadcast

  def send_broadcast
    # to replace notification_badge
    broadcast_replace_to "user_#{recipient.id}_notifications",
      partial: "notifications/notification_badge",
      locals: { user: recipient },
      target: "notification_badge_#{recipient.id}"

    broadcast_prepend_to "user_#{recipient.id}_notifications",
      partial: "notifications/notification",
      locals: { notification: self },
      target: "notifications"
  end
end
