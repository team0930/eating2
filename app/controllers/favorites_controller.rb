class FavoritesController < ApplicationController
  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    favorite = restaurant.favorites.new(user_id: current_user.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    restaurant = Restaurant.find(params[:restaurant_id])
    favorite = restaurant.favorites.find_by(user_id: current_user.id)
    favorite.destroy
    redirect_to request.referer
  end
end
