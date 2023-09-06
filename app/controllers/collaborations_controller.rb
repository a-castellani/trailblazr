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
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.itinerary = @itinerary
    @collaboration.user = current_user
    authorize @collaboration

    if @collaboration.save
      redirect_to itinerary_path(@itinerary, anchor: "collaboration-#{@collaboration.id}")
    else
      render :new, status: :unprocessable_entity
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
    redirect_to itinerary_collaborations_path(@collaboration.itinerary)  # , notice: "Collaboration was successfully deleted."
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:role)
  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end
end
