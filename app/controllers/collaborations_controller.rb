class CollaborationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_collaboration, only: %i[show edit]

  def index
    @collaborations = policy_scope(Collaboration)
  end

  def new
    @collaboration = Collaboration.new
    authorize @collaboration
  end

  def create
    @itinerary = Itinerary.find(itinerary_params)
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.itinerary = @itinerary
    @collaboration.user = current_user
    authorize @collaboration

    if @collaboration.save
      redirect_to itinerary_path(@itinerary, anchor: "collaboration-#{@collaboration.id}")
    else
      render "itineraries/show"
    end
  end

  def show
    @collaboration = Collaboration.find(params[:id])
    authorize @collaboration
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:role)
  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end
end
