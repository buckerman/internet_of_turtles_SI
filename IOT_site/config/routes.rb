Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  get 'home/index'
  root 'home#index'

  # resources :home 
  resources :chart do
    collection do
      get '/', to: 'chart#index', as: 'analysis'
      post '/analysis/:analysis_id', to: 'chart#analysis'
    end
  end
  
  resources :users
  resources :turtles

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'home', to: 'home#index', as: 'home'
  # get 'chart', to: 'chart#chart', as: 'chart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
