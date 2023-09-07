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
    if params[:number_of_people].present?
      sql_subquery = "number_of_people >= :number_of_people"
      @activities = @activities.where(sql_subquery, number_of_people: "#{params[:number_of_people].to_i}")
    end
  end

  def show
    @activity = Activity.find(params[:id])
    authorize @activity
  end
end
