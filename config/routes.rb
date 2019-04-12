Rails.application.routes.draw do
  
  get 'users/new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 
  root 'welcome#index'
  
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  
end
