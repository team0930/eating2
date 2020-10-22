class MenusController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menu_params)
		@menu.restaurant_id = @restaurant.id
		if @menu.save
			redirect_to restaurant_path(@restaurant), notice: "メニューを追加しました"
		else
			render 'new'
		end
	end

	def destroy
		@menu = Menu.find(params[:id])
		if @menu.destroy
			redirect_to restaurant_path(@restaurant), notice: 'メニューを削除しました'
		else
			render 'restaurants/show'
		end
	end

	private
	 def menu_params
	 	params.require(:menu).permit(:name, :price, :category)
	 end

	 def correct_user
	 	@restaurant = Restaurant.find(params[:restaurant_id])
	 	if current_user.id != @restaurant.user.id
  		    redirect_to restaurants_path
  		end
	 end

end
