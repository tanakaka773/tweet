Rails.application.routes.draw do
  root to: 'remarks#index'
  resources :remarks, only: [:index, :new, :create, :destroy, :edit, :update]
end
