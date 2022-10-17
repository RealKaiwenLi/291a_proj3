Rails.application.routes.draw do

  root to: "sessions#index"

  get "/signup", to: "users#new"
  get "/posts", to: "posts#index"  
  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"

  resources :users, except: [:new]
end
