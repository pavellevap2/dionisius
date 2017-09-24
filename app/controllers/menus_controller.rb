class MenusController < InheritedResources::Base

  private

    def menu_params
      params.require(:menu).permit(:restaurant_id, :avatar)
    end
end

