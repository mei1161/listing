Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root to: "home#index"
  delete '/users/:id', to: 'users#destroy', as: 'destroy_user_account'
  resources :users
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
