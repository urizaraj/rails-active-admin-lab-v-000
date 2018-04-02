Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: %i[index show]
  resources :songs, only: %i[index show]

  root to: 'artists#index'
end
