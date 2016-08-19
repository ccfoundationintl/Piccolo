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
  get 'users/set_admin'
  get 'donations/registration_fee'
  match '/send_mass_email', to: 'admin#mass_mailer', via: 'post'

  root 'welcome#index'
end
