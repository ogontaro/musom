Rails.application.routes.draw do
  root 'home#index'

  get :sign_up, to: 'users#new', as: :new_users
  resources :users, only: :create
  resources :activations, only: %i[show create]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
