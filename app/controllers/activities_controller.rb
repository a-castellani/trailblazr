class ActivitiesController < ApplicationController
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
    @all_reviews = []
    @all_selections = @activity.selections
    @all_selections.each do |selection|
      @all_reviews << selection.reviews
    end
    @reviews = @all_reviews.flatten
    @markers = @activities.where(id: params[:id]).map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
