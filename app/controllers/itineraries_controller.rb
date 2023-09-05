class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_itinerary, only: %i[show edit update destroy]

  def index
    # @itineraries = Itinerary.all
    @itineraries = policy_scope(Itinerary)
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary
  end

  def create
    # @itinerary_tag = ItineraryTag.new
    @itinerary = Itinerary.new(itinerary_params)
    # @itinerary.user = current_user
    authorize @itinerary
    save_changes
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    # @activity = Activity.new
    # @unavailable_dates = @spaceship.unavailable_dates
    authorize @itinerary
  end

  # def edit
  #   @itinerary_tag = ItineraryTag.new
  #   authorize @itinerary
  # end

  def destroy
    @itinerary.destroy
    # authorize @itinerary
    redirect_to itineraries_path
  end

  # def update
  #   # params[:itinerary][:tags].each { |tag| ItineraryTag.create(itinerary: @itinerary, tag_id: tag) }
  #   @itinerary.update(itinerary_params)
  #   authorize @itinerary
  #   save_changes
  # end

  private

  def itinerary_params
    params.require(:itinerary).permit(:title)
  end

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def save_changes
    if @itinerary.save
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
