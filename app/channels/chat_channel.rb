class ChatChannel < ApplicationCable::Channel
  def subscribed
    itinerary = Itinerary.find(params[:id])
    stream_for itinerary
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
