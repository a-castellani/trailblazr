class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_new_itinerary

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
end
