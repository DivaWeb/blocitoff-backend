Rails.application.routes.draw do

  get 'items/create'
  resources :users do
    resources :items
  end
  devise_for :users


  root 'users#show'
end
