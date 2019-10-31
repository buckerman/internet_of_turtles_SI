Rails.application.routes.draw do
  resources :deep_data
  resources :collected_data
  resources :turtles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
