Rails.application.routes.draw do
  get 'aquariu/show'
  get 'tauru/show'
  get 'scorpio/show'
  get 'arie/show'
  get 'gemini/show'
  get 'sagittariu/show'
  get 'characters/new'
  get 'characters/create'

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
  resources :npcs

  resource :game_master
  resources :rewards, only: [:index, :show]
  
  resources :characters
  resources :parties

  get '/game_map/:id', to: 'game_map#show', as: 'game_map'
  resources :arie
  resources :gemini
  resources :sagittariu
  resources :scorpio
  resources :tauru
  resources :aquariu

  
  # Defines the root path route ("/")
  root "main#index"
end
