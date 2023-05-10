Rails.application.routes.draw do
  devise_for :users
  resources :products, only: %i[index show]
  resources :carts, only: %i[show]
  resources :purchases, only: %i[index show create]
  post 'carts/add_product'
  post 'carts/remove_product'

  # Defines the root path route ("/")
  root 'products#index'
end
