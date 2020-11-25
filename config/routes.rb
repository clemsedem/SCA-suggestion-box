Rails.application.routes.draw do
  resources :comments
  resources :suggestions
  get 'home/index'
  root to: 'home#index'
end
