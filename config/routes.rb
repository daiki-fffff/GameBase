Rails.application.routes.draw do
  devise_for :users
  get 'tops/index'
  resources :impressions, only:[:index, :create]
  resources :tops, only:[:index]
end