class RestaurantsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  #  @restaurant = current_user.restaurant.new(restaurant_params)
    @restaurant = Restaurant.new(restaurant_params.merge!({user: current_user}))
    @restaurant.save
    render :show
  end

  def show
#   @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :street, :zipcode, :town)
  end
end
