class Restaurants::ReviewsController < ApplicationController
   before_action :set_restaurant
   before_action :set_review, only: [:edit, :update, :delete]

  def index
    @reviews = @restaurant.reviews
  end

  def show
    @review = @restaurant.reviews.find(params[:id])
  end

  def new
    @review = @restaurant.reviews.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
    @review = @restaurant.reviews.find(params[:id])
    if @review.update review_params
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

   def edit

   end

   def destroy
     @review.destroy
     redirect_to restaurant_reviews_path(@restaurant)
   end

   private

    def set_review
      @review = @restaurant.reviews.find(params[:id])
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def review_params
      params.require(:review).permit(:title, :body, :restaurant_id)
    end
end

