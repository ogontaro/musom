Rails.application.routes.draw do
  root 'home#index'
  get :sign_up, to: 'registrations#new', as: :new_user_registration
  post :users, to: 'registrations#create', as: :user_registration
end
