class Api::V1::RestaurantsController < ApplicationController

  def index
   @restaurants = Restaurant.all
   render json: @restaurants
  end
  # GET /restaurants/1
  def show
   render json: @restaurant
  end
  # POST /restaurants
  def create
   @restaurant = Restaurant.new(restaurant_params)
   if @restaurant.save
    render json: @restaurant, status: :created, location: api_v1_restaurant_url(@restaurant)
   else
    render json: @restaurant.errors, status: :unprocessable_entity
   end
  end
  # PATCH/PUT /restaurants/1
  def update
   if @restaurant.update(restaurant_params)
    render json: @restaurant
   else
    render json: @restaurant.errors, status: :unprocessable_entity
   end
  end
 # DELETE /restaurants/1
  def destroy
   @restaurant.destroy
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
   @restaurant = Restaurant.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def restaurant_params
   params.require(:restaurant).permit(:name, :email, :phone_num)
  end
end
