class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_new_itinerary
  before_action :set_itineraries
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search_form

  include Pundit::Authorization

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_new_itinerary
    @itinerary = Itinerary.new
  end

  def set_itineraries
    @itineraries = current_user.itineraries if user_signed_in?
  end

  def set_search_form
    @activities = Activity.all
    @all_tags = []
    @activities.each do |activity|
      @all_tags << activity.tags
    end
    @tags = @all_tags.flatten.uniq.sort!

    @all_categories = []
    @activities.each do |activity|
      @all_categories << activity.category
    end
    @categories = @all_categories.uniq.sort!

    @all_locations = []
    @activities.each do |activity|
      @all_locations << activity.location
    end
    @locations = @all_locations.uniq.sort!
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name photo])
  end
end
