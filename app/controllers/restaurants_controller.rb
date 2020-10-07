class RestaurantsController < ApplicationController
  def index
  	@restaurant = Restaurant.all
  end

  def show
  	@restaurants = Restaurant.all
  	@restaurant = Restaurant.find(params[:id])
  	@user = @restaurant.user
  end

  def new
  	@restaurant = Restaurant.new
  	@restaurant.pictures.build
  end

  def edit
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	@restaurant.user_id = current_user.id
  	if @Restaurant.save
  		redirect_to restaurant_path(@restaurant)
  	else
  		render :new
  	end
  end

  def update
  	@restaurant = Restaurant.find(params[:id])
  	if @restaurant.update(restaurant_params)
  		redirect_to restaurant_path(@restaurant)
  	else
  		render :edit
  	end
  end

  def destroy
  	restaurant = Restaurant.find(params[:id])
  	restaurant.destroy
  	redirect_to restaurants_path
  end

  private
  	def restaurant_params
  		params.require(:restaurant).permit(:name, :phone_number, :postal_code, :address, :email, :menu_id :genre_id, pictures_images: [])
  	end
  end
end
