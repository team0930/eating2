class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  end

  def new
  	@restaurant = Restaurant.new
  	@restaurant.pictures.new
  end

  def edit
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	# @restaurant.user_id = current_user.id
  	if @restaurant.save
  		redirect_to restaurants_path
  	else
  		@restaurant.pictures.new
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
  		params.require(:restaurant).permit(:name, :introduction, :phone_number, :address, :email, pictures_images: [])
  	end

end
