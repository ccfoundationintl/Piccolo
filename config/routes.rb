Rails.application.routes.draw do
  devise_for :users
  resources :donations
  resources :sponsors
  resources :teams
  resources :users

  get 'about/index'
  get 'welcome/index'

  root 'welcome#index'
end
