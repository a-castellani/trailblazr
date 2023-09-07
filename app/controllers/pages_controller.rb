class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @activities = Activity.all
    @all_tags = []
    @activities.each do |activity|
      @all_tags << activity.tags
    end
    @tags = @all_tags.flatten.uniq
    @all_categories = []
    @activities.each do |activity|
      @all_categories << activity.category
    end
    @categories = @all_categories.uniq
  end

  def dashboard
    @itineraries = current_user.itineraries
  end
end
