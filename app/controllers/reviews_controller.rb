class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
    @selection = Selection.find(params[:selection_id])
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @review = Review.new(review_params)
    @review.selection = Selection.find(params[:selection_id])
    @review.user = current_user
    authorize @review
    @review.save
    @selection = Selection.find(params[:selection_id])
    redirect_to itinerary_path(@selection.itinerary)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
