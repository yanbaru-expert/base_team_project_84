Rails.application.routes.draw do
  resources :tasks
  resources :users
  resources :messages
end
