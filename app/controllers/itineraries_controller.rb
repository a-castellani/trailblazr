class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_itinerary, only: %i[show edit update destroy]

  def index
    @itineraries = policy_scope(current_user.itineraries)
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary

    if @itinerary.save
      # Collaboration.create(itinerary: @itinerary, user: current_user, role: "admin" )
      Collaboration.create(itinerary: @itinerary, user: current_user, role: "admin", email: current_user.email )
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    authorize @itinerary
    if @itinerary.save
      Collaboration.create(itinerary: @itinerary, user: current_user, role: "owner", email: current_user.email )
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @itinerary = Itinerary.find(params[:id])
    @itinerary = Itinerary.find(params[:id])
    @owner = @itinerary.collaborations.find_by(role: "owner").user
    @collaboration = Collaboration.new(itinerary: @itinerary)
    @message = Message.new
    authorize @itinerary

    @selections = policy_scope(Selection)

    # @selections = Selection.where(itinerary_id: params[:itinerary_id]) # replace with params[id] when get itinerary
    # @itinerary = Itinerary.find(params[:itinerary_id])

    @selections = Selection.where(itinerary_id: @itinerary)
    @selections_with_days = @selections.reject { |s| s.day.nil? }.group_by(&:day).sort_by(&:first)
    @selections_without_days = Selection.where(itinerary_id: @itinerary, day: nil)

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
