class SelectionsController < ApplicationController
  def index
    @selections = policy_scope(Selection)

    # @selections = Selection.where(itinerary_id: params[:itinerary_id]) # replace with params[id] when get itinerary
    # @itinerary = Itinerary.find(params[:itinerary_id])

    # @itinerary_activities = selections.map do |selection|
    #   Activity.find(selection.activity_id)
    # end

    # new try

    @itinerary = Itinerary.find(params[:itinerary_id])
    @selections = Selection.where(itinerary_id: @itinerary)
  end

  def create
    @selection = Selection.new(selection_params)
    @activity = Activity.find(params[:activity_id])
    @selection.activity = @activity
    authorize @selection

    if @selection.save
      redirect_to itinerary_path(@selection.itinerary)
    else
      render "activities/show", status: :unprocessable_entity
    end
  end

  # def create
  #   @itinerary = Itinerary.find(params[:itinerary_id])
  #   @activity = Activity.find(params[:activity_id])
  #   @selection = Selection.new(params[:selection])
  #   # @selection.update(day: params[:selection][:day])

  #   # @selection.update(selection_params.slice(:day))
  #   Selection.create(itinerary_id: @itinerary.id, activity_id: @activity.id)
  #   redirect_to itinerary_path(@itinerary)

  #   authorize @selection
  # end

  def destroy
    @selection = Selection.find_by(activity_id: params[:id])
    @selection.destroy
    redirect_to itinerary_path(@selection.itinerary_id)
    authorize @selection
  end

  def new
    @selection = Selection.new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @activity = Activity.find(params[:activity_id])
    authorize @selection
  end

  private

  def selection_params
    params.require(:selection).permit(:itinerary_id, :activity_id, :day)
  end
end
