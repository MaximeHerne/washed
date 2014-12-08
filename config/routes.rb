Rails.application.routes.draw do

  devise_for :washers, controllers: { registrations: "washers/registrations"}
  devise_for :users, controllers: { registrations: "users/registrations"}

  root to: "pages#home"
  get '/about', to: "pages#about"

  resources :orders, only: [:new, :create, :show, :index]

end
