Rails.application.routes.draw do
  root to: 'photorooms#index'
  resources :photorooms
end
