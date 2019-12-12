Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:index, :destroy]
  resources :comments, except: [:show]
  resources :users, only: [:show]
end
