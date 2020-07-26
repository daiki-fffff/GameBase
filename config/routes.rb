Rails.application.routes.draw do
  get 'tops/index'
  resources :impressions, only:[:index, :create]
  resources :tops, only:[:index]
  get '/users/logout', 'users#logout'
end

