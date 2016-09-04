Rails.application.routes.draw do
  resources :movies
  resources :books
  resources :users

  get 'welcome/index'

  root 'welcome#index'
end
