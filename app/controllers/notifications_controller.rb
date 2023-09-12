class NotificationsController < ApplicationController
  def index
    @notifications = policy_scope(Notification)
  end

  # PATCH /notifications/:id/toggle_read
  def toggle_read
    # Get the notification with id
    @notification = Notification.find(params[:id])
    authorize @notification
    if @notification.read?
      @notification.mark_as_unread!
    else
      @notification.mark_as_read!
    end
    # redirect back to notifications index
    redirect_to notifications_path
  end
end
