Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :impressions, only:[:index, :create]
  resources :tops, only:[:index]
  get '/users/logout', 'users#logout'
end

