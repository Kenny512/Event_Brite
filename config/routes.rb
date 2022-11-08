Rails.application.routes.draw do
  devise_for :users
  resources :attendances
  resources :events
  resources :users
  resources :devise 
  root "events#index"
end
