class ReviewsController < ApplicationController

  def index
    @search = Review.search(params[:q])
    @reviews = @search.result
  end
end
