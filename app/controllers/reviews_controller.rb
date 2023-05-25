class ReviewsController < ApplicationController
  def index
    @rewiews = Review.all
  end

  def create
    @review = Restaurant.new(review_params)
    @review.save
    redirect_to review_path(@review)
  end

  private

  def restaurant_params
    params.require(:review).permit(:rating, :content)
  end



end
