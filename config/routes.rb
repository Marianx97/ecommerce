Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add_product'
  post 'cart/remove_product'
  resources :products
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
end
