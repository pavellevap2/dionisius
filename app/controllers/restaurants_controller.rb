class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @search = Restaurant.search(params[:q])
    @restaurants = @search.result
    @restaurants = @restaurants.filter(params.slice(:cuisine, :specialization))
  end

  def show

  end

  private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
    def restaurant_params
      params.require(:restaurant).permit(:name, :cuisine, :first_title, :description, :avatar, :specialization, :rating)
    end
end

