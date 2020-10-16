class SearchsController < ApplicationController
  def search
  	@search_area = params[:areas]
    @search_genre = params[:genres]

    @restaurants = Restaurant.search(params[:areas], params[:genres])
  end
end
