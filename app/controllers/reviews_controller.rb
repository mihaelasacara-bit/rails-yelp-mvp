class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to @restaurant, notice: "Review was created."
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def review_params
    params.expect(review: [ :content, :rating ])
  end
end
