Rails.application.routes.draw do

  root "welcome#index"

  resources :users, only: [:index, :show, :new, :create]
  resources :skills, only: [:index, :show, :new, :create] do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :endorsements, only: [:create, :destroy]

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post  "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
