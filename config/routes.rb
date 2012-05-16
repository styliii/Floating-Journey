HappinessProject::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'settings', to: 'users#edit', as: 'settings'
  get "static/index"
  resources :users
  resources :sessions
  resources :entries
  
  root to: 'entries#new'
  
end
