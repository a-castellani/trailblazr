
class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_itinerary, only: %i[show edit update destroy]

  def index
    @itineraries = policy_scope(current_user.itineraries)
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    authorize @itinerary
    if @itinerary.save
      Collaboration.create(itinerary: @itinerary, user: current_user, role: "admin" )
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    @owner = @itinerary.collaborations.find_by(role: "admin").user
    # need help
    @collaboration = Collaboration.new(itinerary: @itinerary)

    @message = Message.new
    authorize @itinerary
  end

  def edit
    authorize @itinerary
  end

  def update
    @itinerary.update(itinerary_params)
    if @itinerary.save
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @itinerary
  end

  def destroy
    @itinerary.destroy
    authorize @itinerary
    redirect_to itineraries_path
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:title)
  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:collaboration_id])
  end

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
