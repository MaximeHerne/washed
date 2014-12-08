Rails.application.routes.draw do

  devise_for :washers
  devise_for :users

  root to: "pages#home"
  get '/about', to: "pages#about"

  resources :orders, only: [:new, :create, :show, :index]

end
