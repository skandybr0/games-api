Rails.application.routes.draw do
  namespace :api do
  resources :games, only: [ :index, :show, :create, :update, :destroy ]
  resources :genres, only: [ :index, :show ]
  resources :developers, only: [ :index, :show ]
 end
end
