class ReviewsController < ApplicationController
  def new
    @review = Itinerary.new
    authorize @review
  end

  def create
  end 
end
