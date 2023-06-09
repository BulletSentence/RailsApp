Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "about", to: "about#index", as: :about

  get "sign_up", to: "registrations#new", as: :sign_up
  post "sign_up", to: "registrations#create"

  delete "logout", to: "sessions#destroy", as: :sign_out

  get "sign_in", to: "sessions#new", as: :sign_in
  post "sign_in", to: "sessions#create"

  root to: "main#index"
end
