class DiscountsController < InheritedResources::Base

  private

    def discount_params
      params.require(:discount).permit(:title, :body)
    end
end

