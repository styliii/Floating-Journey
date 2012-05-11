HappinessProject::Application.routes.draw do
  get "static/index"
  resources :users
  resources :entries
  root :to => 'entries#new'
end
