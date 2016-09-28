Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  get "signup", to: "users#new"
end
