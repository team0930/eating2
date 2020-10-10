class MenusController < ApplicationController

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menu_params)
		@menu.restaurant_id = Restaurant.find(params[:id])
		if @menu.save
			redirect_to menus_path, notice: "メニューを追加しました"
		else
			render 'new'
		end
	end

	def index
		@menus = Menu.page(params[:page])
	end

	def edit
		@menu = Menu.find(params[:id])
	end

	def update
		@menu = Menu.find(params[:id])
		if @menu.update(menu_params)
			redirect_to menu_path, notice: 'メニューを更新しました'
		else
			render 'edit'
		end
	end

	def destroy
		@menu = Menu.find(params[:id])
		if @menu.destroy
			redirect_to menu_path, notice: 'メニューを削除しました'
		else
			@menus = Menu.page(params[:page])
			render 'index'
		end
	end

	private
	 def menu_params
	 	params.require(:menu).permit(:name, :price)
	 end

end
