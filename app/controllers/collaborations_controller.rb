class CollaborationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_collaboration, only: %i[show edit]

  def index
    @collaborations = policy_scope(Collaboration)
    @collaboration = Collaboration.new
    @itinerary = Itinerary.find(params[:itinerary_id])
  end

  def create
    @user = current_user
    @itinerary = Itinerary.find(params[:itinerary_id])
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.itinerary = @itinerary
    @collaboration.user = User.find_by(email: collaboration_params[:email])
    authorize @collaboration

    if @collaboration.save
      CollabNotification.with(role: @collaboration.role, itinerary_title: @itinerary.title,
                              itinerary_owner: @user, type: create).deliver(@collaboration.user)
      raise
      UserMailer.with(user: @collaboration.user, itinerary: @itinerary).hello.deliver_now
      # render json: @user, status: :created
      redirect_to itinerary_path(@itinerary)
    else
      @message = Message.new
      render 'itineraries/show', status: :unprocessable_entity
    end
  end

  def show
    @collaboration = Collaboration.find(params[:id])
    authorize @collaboration
  end

  def destroy
    @collaboration = Collaboration.find(params[:id])
    authorize @collaboration

    if @collaboration.destroy
      flash[:notice] = "Collaboration was successfully deleted."
      CollabNotification.with(itinerary_title: @itinerary.title,
                              itinerary_owner: @user, type: destroy).deliver(@collaboration.user)
    else
      flash[:alert] = "Unable to delete collaboration."
    end
    redirect_to itinerary_path
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:role, :email)
  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end
end
