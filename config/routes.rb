Rails.application.routes.draw do


  resources :users
  resources :items

  devise_for :users


  root 'users#show'
end
