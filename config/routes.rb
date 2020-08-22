Rails.application.routes.draw do
  devise_for :users
  root to: 'impressions#index'
  resources :impressions, only:[:index, :create, :new]
  resources :tops, only:[:index]
  resources :users, only:[:new, :create, :edit, :destroy, :update, :show]
  #マイページ表示
  #get '/users/:id', to: 'users#show'

  get '/users/logout', to: 'users#logout'
end

