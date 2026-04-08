class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to "/restaurants", notice: "Restaurant was created."
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def restaurant_params
    params.expect(restaurant: [ :name, :category, :address ])
  end
end
