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
end

#
# if __FILE__ == $PROGRAM_NAME
#   binding.pry
#   rest = RestaurantsController.new
#   all = rest.index
# end