class ActivitiesController < ApplicationController

  def index
    @activities = policy_scope(Activity)
  end

  def show
  end

end
