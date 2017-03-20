Rails.application.routes.draw do
 

  resources :administrators
  resources :children
  resources :guardians
  resources :roles
  
 # get 'recent'=> 'ideas#recent'
 # get 'oldest'=> 'ideas#oldest'
#  get 'filled'=> 'filled#recent'
# get 'decend'=> 'ideas#decend'
#  get 'alphabitizedasc'=> 'ideas#alphabitizedasc'
 ## #get 'helpNeeded'=> 'ideas#Needed'
  
  
  #get 'about' => '#about'
   
  get 'sessions/new' => 'sessions#new', as: :login
  
  post 'sessions/new'  => 'sessions#create'
  
  delete 'visitors/index' => 'sessions#destroy', as: :logout
  
  get 'administrators/new' => 'administrators#new', as: :signup
 

  resources :administrators do
      get :make_admin, on: :member
  end
  
  root to: 'visitors#index'
  
  # get 'login' => 'sessions#new'
  # get 'signup' => 'users#new'
  
  #post 'login' => 'sessions#create'
  # #	post 'signup' => 'session#new'
  # 	post 'signup' => 'users#create'
end 
