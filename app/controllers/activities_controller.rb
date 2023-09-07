class ActivitiesController < ApplicationController
  def index
    @activities = policy_scope(Activity)
    if params[:mood].present?
      sql_subquery = "tags ILIKE :mood"
      @activities = @activities.where(sql_subquery, tags: "%#{params[:mood]}%")
      render activities_path
    end
  end

  def show
    @activity = Activity.find(params[:id])
    authorize @activity
  end
end
