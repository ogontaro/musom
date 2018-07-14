Rails.application.routes.draw do
  root 'home#index'
  get :sign_up, to: 'users#new', as: :new_users
  get :activate, to: 'users#activate', as: :activate_user
  resources :users, only: :create
end
