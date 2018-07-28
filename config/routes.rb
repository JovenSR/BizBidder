Rails.application.routes.draw do
  resources :proposals
  root to: 'requests#index'
  resources :service_providers
   
   
  resources :users 
   
  resources :requests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
