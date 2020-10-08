Rails.application.routes.draw do

  # メインページルーティング
  root 'home#top'
  get 'home/about' => 'home#about'

  devise_for :users
  resources :users, only: [:show, :edit, :update] 
  #退会処理用
  patch 'users/:id/withdraw' => 'users#withdraw'

  resources :restaurants do
  	collection do
      # レストラン検索ページ
      get 'select'
      # レストラン検索結果ページ
      get 'search'
    end
  	resources :comments, only:[:new, :create, :show, :edit, :update, :destroy]
  	resource :favorite, only: [:create, :destroy]
  end
  resources :menus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
