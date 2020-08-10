Rails.application.routes.draw do
  resources :remarks, only: :index
end
