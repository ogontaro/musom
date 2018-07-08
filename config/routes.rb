Rails.application.routes.draw do
  root 'home#index'
  get :sign_up, to: 'users#new', as: :new_users
  resources :users, only: :create
end
