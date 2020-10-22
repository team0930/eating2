Rails.application.routes.draw do

  # メインページルーティング
  root 'home#top'
  get 'home/about' => 'home#about'
  get 'search' => 'searchs#search'

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  #退会処理用
  put 'users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'

  resources :restaurants do
    collection do
      # レストラン検索ページ
      get 'select'
      # レストラン検索結果ページ
      get 'search'
    end
    resources :comments, only:[:create, :destroy]
    resource :favorite, only: [:create, :destroy]
    resources :menus, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
