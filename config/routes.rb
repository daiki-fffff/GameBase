Rails.application.routes.draw do
  devise_for :users
  root to: 'impressions#index'
  resources :impressions, only:[:index, :create, :new, :edit, :update, :delette]
  resources :users, only:[:new, :create, :edit, :update, :show]
  # マイページ表示
  # get '/users/:id', to: 'users#show'
  
  #編集機能のルーティング
  get 'impressions/:id/edit', to: 'impressions#edit'
  #削除機能のルーティング
  delete 'impressions/:id', to: 'impressions#destroy'
  post 'impressions/:id/update', to: 'impressions#update'

  #get '/users/logout', to: 'users#logout'
end

