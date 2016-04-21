Rails.application.routes.draw do
  resources :roles
  get 'sessions/new'

  resources :link_tables
  resources :ideas
  resources :platforms
  resources :users
  root to: 'visitors#index'
  
  # get 'sessions/new'
  # post 'sessions/new'
  # post 'sessions/create'
  # get 'sessions/destroy'
 
 

  resources :users do
      get :make_admin, on: :member
  end
  
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  	get 'signup' => 'users#new'
  	post 'signup' => 'sessions#new'
  end
  
  # get 'login' => 'sessions#new'
  # get 'signup' => 'users#new'
  
  # post 'login' => 'sessions#create'
  # #	post 'signup' => 'session#new'
  # 	post 'signup' => 'users#create'
end
