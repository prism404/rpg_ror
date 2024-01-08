Rails.application.routes.draw do

  # INVENTORY
  get "/inventory", to: "inventory#index"
  put "/inventory", to: "inventory#update"

  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resources :quests
  resources :items , only: [:index, :show, :new, :edit, :create, :update, :destroy] 
  resources :questions
  resource :game_master
  resources :rewards, only: [:index, :show]

  # Defines the root path route ("/")
  root "main#index"
end
