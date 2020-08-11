Rails.application.routes.draw do
  devise_for :users
  root to: 'remarks#index'
  resources :remarks
  resources :users, only: :show
end
