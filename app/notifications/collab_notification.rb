# To deliver this notification:
#
# CollabNotification.with(post: @post).deliver_later(current_user)
# CollabNotification.with(post: @post).deliver(current_user)

class CollabNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :collaboration
  param :itinerary
  param :type
  param :itinerary_owner

  # Define helper methods to make rendering easier.
  #
  # def message
  #   t(".message")
  # end
  #
  # def url
  #   post_path(params[:post])
  # end
end
