Rails.application.routes.draw do
  resources :roles
  get 'sessions/new'

  resources :link_tables
  resources :ideas
  resources :platforms
  resources :users
  root to: 'visitors#index'
  
   
   get 'sessions/new' => 'sessions#new', as: :login
  
  post 'sessions/new'  => 'sessions#create'
  
  delete 'visitors/index' => 'sessions#destroy', as: :logout
  
  get 'users/new' => 'users#new', as: :signup
 

  resources :users do
      get :make_admin, on: :member
  end
  
  
  
  # get 'login' => 'sessions#new'
  # get 'signup' => 'users#new'
  
  # post 'login' => 'sessions#create'
  # #	post 'signup' => 'session#new'
  # 	post 'signup' => 'users#create'
end
