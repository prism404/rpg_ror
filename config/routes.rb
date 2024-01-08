Rails.application.routes.draw do
  get 'characters/new'
  get 'characters/create'

  get "/inventory", to: "inventory#index"
  put "/inventory", to: "inventory#update"

  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resources :quests
  resources :items , only: [:index, :show, :new, :edit, :create, :update, :destroy] 
  resources :enigmas

  resource :game_master
  
  resources :characters
  resources :parties

  get '/game_map/:id', to: 'game_map#show', as: 'game_map'

  
  # Defines the root path route ("/")
  root "main#index"
end
