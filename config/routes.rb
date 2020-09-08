Rails.application.routes.draw do

  get 'home/index'
  devise_for :users
  root to: "home#index"


  # devise_for :installs
  resources :items
  resources :item_rentals
  resources :rentals
  resources :pets
  resources :users
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
