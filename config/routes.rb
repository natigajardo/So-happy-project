Rails.application.routes.draw do
  resources :product_instances
  resources :products
  resources :categories
  devise_for :users

  resources :users, only: [:edit, :update] 
   
  get 'home/index'

  root to: "home#index"
  get 'home/admin', to: 'home#admin', as: 'homeAdmin'
  
  #Rutas de productos
  get 'products/main'
  get 'products/showproduct'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
