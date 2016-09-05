Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:create, :destroy, :new]

  get 'welcome/index'

  root 'welcome#index'
end
