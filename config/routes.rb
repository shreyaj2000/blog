Rails.application.routes.draw do
  
  get 'users/new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy' 
  root 'welcome#index'
  
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  
  resources :users
  
end
