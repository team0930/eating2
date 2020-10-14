class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @course_menus = Menu.where(category: "コース")
    @alacarte_menus = Menu.where(category: "単品料理")
    @drink_menus = Menu.where(category: "ドリンク")
    @desert_menus = Menu.where(category: "デザート")
  end

  def new
  	@restaurant = Restaurant.new
  	@restaurant.pictures.new
  end

  def edit
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
  	if @restaurant.save!
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
  		params.require(:restaurant).permit(:name, :introduction, :phone_number, :postal_code, :area_id, :genre_id, :address, :email, pictures_images: [])
  	end

end
