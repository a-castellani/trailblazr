class MessagesController < ApplicationController
  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @message = Message.new(message_params)
    @message.itinerary = @itinerary
    @message.user = current_user
    authorize @message
    if @message.save
      ChatChannel.broadcast_to(
        @itinerary,
        render_to_string(partial: "message", locals: { message: @message })
      )
      head :ok
    else
      render "itineraries/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
