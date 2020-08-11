Rails.application.routes.draw do
  root to: 'remarks#index'
  resources :remarks
end
