class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(restaurant_params)
    @restaurant = params[:restaurant_id]
    @review.save
    @review.restaurant = @restaurant
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
