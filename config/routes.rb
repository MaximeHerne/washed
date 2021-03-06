Rails.application.routes.draw do

  namespace :me do
    get :profile
    get :edit
    put :update
    root to: :profile
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }

  devise_for :washers, controllers: {
    registrations: "washers/registrations",
    sessions: "washers/sessions",
  }


  root to: "pages#home"
  get '/about', to: "pages#about"

  resources :orders, only: [:new, :create, :show, :index]

  # resources :users, only: [:show, :edit, :update]

end
