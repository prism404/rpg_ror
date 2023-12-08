Rails.application.routes.draw do

  get "/inventory", to: "inventory#index"

  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resources :quests
  resources :items , only: [:index, :show, :new, :edit, :create, :update, :destroy] 

  # Defines the root path route ("/")
  root "main#index"
end
