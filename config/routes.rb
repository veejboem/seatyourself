Rails.application.routes.draw do

  # root 'users#index'
  resources :reservations
  get 'reservations/success'
  # resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :restaurants
  resource :search_restaurants




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
