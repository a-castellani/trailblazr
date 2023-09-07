class CollaborationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_collaboration, only: %i[show edit]

  def index
    @collaborations = policy_scope(Collaboration)
    @collaboration = Collaboration.new
    @itinerary = Itinerary.find(params[:itinerary_id])
  end

  def new
    @collaboration = Collaboration.new
    @itinerary = Itinerary.find(params[:itinerary_id])
    authorize @collaboration
  end

  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @collaboration = @itinerary.collaborations.new(collaboration_params)
    # raise
    authorize @collaboration

    # need help
    if @collaboration.save!
      redirect_to itinerary_path(@itinerary)
    else
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
    else
      flash[:alert] = "Unable to delete collaboration."
    end
    redirect_to itinerary_path
  end

  private

  def collaboration_params
    # params.require(:collaboration).permit(:role, :email, user_attributes: [:email, :password, :password_confirmation])
    params.require(:collaboration).permit(:role)

  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end
end
