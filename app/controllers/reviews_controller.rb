class ReviewsController < ApplicationController

  def index
    @search = Restaurant.ransack(params[:q])
    @restaurants = @search.result.includes(:reviews)
  end

  def show

  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def review_params
    params.require(:review).permit(:rating, :title, :body, :restaurant_id)
  end
end
