class SearchsController < ApplicationController
  def search
  	#@search_area = params[:name]
    #@search_genre = params[:category]

    #@restaurants = Restaurant.where(['area LIKE ? OR genre LIKE ?', "%#{area_id}%", "%#{genre_id}%"])

    #@restaurants = Restaurant.where(area_id: params[:area_id], genre_id: params[:genre_id])

    @restaurants = Restaurant.where(['area_id LIKE ? AND genre_id LIKE ?', "%#{params[:area_id]}%", "%#{params[:genre_id]}%"])

  end
end
