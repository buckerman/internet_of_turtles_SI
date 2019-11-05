Rails.application.routes.draw do
  get 'map/index'
  get 'map/traker'
  resources :turtle_data
  # devise_for :users do
  #     # root to: "devise/sessions#new"
  # #     post 'users/sign_up', to: 'devise/registrations#create'
  # #   end
  # # #  do
  # get 'home/login', to: 'devise/sessions#new'
  #   # post ':controller(/:action(/:id(.:format)))'
  #   # get ':controller(/:action(/:id(.:format)))'
  # end

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  get 'home/index'
  root 'home#index'

  # resources :home
  resources :chart do
    collection do
      get '/', to: 'chart#index', as: 'analysis'
      post '/analysis/:analysis_id', to: 'chart#analysis'
    end
  end

  resources :map
  resources :users
  resources :turtles
  resources :turtle_data
  resources :sessions

  get 'map/turtle_info/:id',controller: 'turtles', action: 'turtle_info', as: 'turtle_info'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  get 'home', to: 'home#index', as: 'home'
  # get 'chart', to: 'chart#chart', as: 'chart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

