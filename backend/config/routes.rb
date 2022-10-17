Rails.application.routes.draw do

  root to: "sessions#index"

  get "/signup", to: "users#new"
  get "/posts", to: "posts#index"  
  get "/posts/:id", to: "posts#show"
  get "/login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :users, except: [:new]
end
