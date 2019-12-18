Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :create, :new, :show] do
    resources :comments, except: [:show, :destroy]
    resources :saved_artworks, only: [:new, :create]
  end

  resources :viewing_locations, only: [:show] do
    resources :favorites, only: [:create]
  end

  resources :comments, only: [:destroy, :edit, :update]
  resources :favorites, only: [:index, :destroy]
  resources :users, only: [:show]
  get "/collections/:tag", to: "saved_artworks#show", as: "collection"
end
