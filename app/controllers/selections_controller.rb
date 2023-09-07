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

  def destroy
    @selection = Selection.find_by(activity_id: params[:id])
    @selection.destroy
    redirect_to itinerary_selections_path(@selection.itinerary_id)
    authorize @selection
  end

  def selection_params
    params.require(:selection).permit(:itinerary_id)
  end
end
