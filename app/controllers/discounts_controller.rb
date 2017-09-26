class DiscountsController < InheritedResources::Base

  def index

  end
  private

    def discount_params
      params.require(:discount).permit(:title, :body)
    end
end

