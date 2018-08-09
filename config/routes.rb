Rails.application.routes.draw do
  get '/home' => 'pages#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/my_proposals' => 'service_providers#my_proposals'
  post '/update_accept' => 'requests#update_accept'
  resources :proposals
  root to: 'requests#index'
  resources :service_providers
   
   
  resources :users 
   
  resources :requests
  namespace :charts do
    get "request_by_city"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
