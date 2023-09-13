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
      @all_reviews = []
      @all_selections = @activity.selections
      @all_selections.each do |selection|
        @all_reviews << selection.reviews
      end
      @reviews = @all_reviews.flatten

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

  # GET selections/:id/edit
  def edit
    @selection = Selection.find(params[:id])
    authorize @selection
  end

  # PATCH slections/:id
  def update
    @selection = Selection.find(params[:id])
    authorize @selection
    if @selection.update(selection_params)
      redirect_to itinerary_path(@selection.itinerary), notice: "Activity added to day plan"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @day_selection = Selection.find(params[:id])
    @selection = Selection.where(itinerary: @day_selection.itinerary, activity: @day_selection.activity)
    @selection.destroy_all

    if @day_selection.destroy
      redirect_to itinerary_path(@day_selection)
    end
    authorize @day_selection
  end

  def new
    @selection = Selection.new
    @itinerary = Itinerary.find(params[:itinerary_id])
    @activity = Activity.find(params[:activity_id])
    authorize @selection
  end

  # GET /selections/:id/select_day
  def select_day
    @selection = Selection.find(params[:id])
    authorize @selection, :update?
  end

  # PATCH /selections/:id/clone_with_new_day
  def clone_with_new_day
    @selection = Selection.find(params[:id])
    authorize @selection, :update?

    @selection_clone = @selection.dup # make a new selection
    @selection_clone.day = params[:selection][:day]

    if @selection_clone.save
      redirect_to itinerary_path(@selection_clone.itinerary), notice: "Activity added to day plan"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:itinerary_id, :activity_id, :day)
  end
end
