class NotificationsController < ApplicationController
  def index
    @notifications = policy_scope(Notification)
    raise
  end
end
