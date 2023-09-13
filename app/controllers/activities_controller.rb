class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @activities = policy_scope(Activity)
    if params[:tags].present?
      sql_subquery = "array_to_string(tags, ', ') ILIKE :tags"
      @activities = @activities.where(sql_subquery, tags: "%#{params[:tags]}%")
    end
    if params[:category].present?
      sql_subquery = "category LIKE :category"
      @activities = @activities.where(sql_subquery, category: "%#{params[:category]}%")
    end
    if params[:location].present?
      sql_subquery = "location ILIKE :location"
      @activities = @activities.where(sql_subquery, location: "%#{params[:location]}%")
    end
    if params[:number_of_people].present?
      sql_subquery = "number_of_people >= :number_of_people"
      @activities = @activities.where(sql_subquery, number_of_people: "#{params[:number_of_people].to_i}")
    end

    # The `geocoded` scope filters only activities with coordinates
    @activities = Activity.geocoded
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @selection = Selection.new
    authorize @activity
    @itineraries = current_user.itineraries
    @last_itinerary = @itineraries.last

    @all_reviews = []
    @all_selections = @activity.selections
    @all_selections.each do |selection|
      @all_reviews << selection.reviews
    end
    @reviews = @all_reviews.flatten
    # raise
    @markers = @activities.where(id: params[:id]).map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    authorize @activity
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :category, :description, :location, :duration, :number_of_people)
  end
end
