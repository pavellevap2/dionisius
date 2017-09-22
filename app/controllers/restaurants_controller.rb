class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.joins(:addresses)
  end
  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :cuisine, :first_title, :description, :avatar, :specialization, :rating)
    end
end

