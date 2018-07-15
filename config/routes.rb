Rails.application.routes.draw do
  root 'home#index'

  get :sign_up, 'users#new', as: 'new_user'
  resources :users, only: :create
  resources :activations, only: %i[show create]
end
