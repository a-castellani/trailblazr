class ActivitiesController < ApplicationController
  def index
    @activities = policy_scope(Activity)
    if params[:category].present?
      sql_subquery = "category LIKE :category"
      @activities = @activities.where(sql_subquery, category: "%#{params[:category]}%")
    end
    if params[:tag].present?
      sql_subquery = "tags LIKE :tag"
      @activities = @activities.where(sql_subquery, tags: "%#{params[:tag]}%")
    end
  end

  def show
    @activity = Activity.find(params[:id])
    authorize @activity
  end
end
