Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'home#index'

  # Defines devise user endpoints
  devise_for :users

  # Resources
  resources :products, only: %i[index show]
  resources :purchases, only: %i[index show create]
  resources :carts, only: %i[show]
  post 'carts/add_product'
  post 'carts/remove_product'
end
