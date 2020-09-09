Rails.application.routes.draw do

  get 'home/index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  root to: "home#index"


  # devise_for :installs
  resources :items
  resources :item_rentals
  resources :rentals
  resources :pets
  resources :users
  
  # get 'users/id', to: 'users#not_me', as: 'not_me'

  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
