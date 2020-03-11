class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurants)

    if @restaurant.save
      redirect_to(restaurant_path(@restaurant.id))
    else
      render :new
    end
  end

  private

  def params_restaurants
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

#
# if __FILE__ == $PROGRAM_NAME
#   binding.pry
#   rest = RestaurantsController.new
#   all = rest.index
# end
