class SearchRestaurantsController < ApplicationController
  # def new
  #   @restaurant_search = Restaurant_Search.new
  # end

  def create
    @restaurant_search = Restaurant_Search.new(restaurant_search_params)
    # if @restaurant_search.save
    #   redirect_to "http://localhost:3000"
    # else
    #   render "new"
  end

  private
  def restaurant_search_params
    params.require(:restaurant_search).permit(:date,:time, :party_size)
  end
end
