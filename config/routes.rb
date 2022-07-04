Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'photorooms#index'
  resources :photorooms

  namespace :admin do
    resources :photorooms, only: [:new, :create, :edit, :destroy]
  end
end
