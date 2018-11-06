Rails.application.routes.draw do


  resources :users do
    resources :items
  end
  devise_for :users


  root 'users#show'
end
