Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show] do
    resources :comments, except: [:show, :destroy]
  end

  resources :comments, only: [:destroy, :edit, :update]

  resources :favorites, only: [:index, :create, :destroy]
end
