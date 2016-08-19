Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  get 'donations/registration_fee'

  resources :donations
  resources :sponsors
  resources :teams
  resources :users

  get 'about/index'
  get 'welcome/index'
  get 'admin/index'
  post 'users/send_donation_email'
  get 'donations/registration_fee'

  root 'welcome#index'
end
