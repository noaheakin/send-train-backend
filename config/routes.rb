Rails.application.routes.draw do

  resources :user_crags
  resources :crags
  resources :target_climbs
  resources :tick_lists
  resources :climbs
  resources :users

  post '/login', to: 'users#login'
  post '/register', to: 'users#create'
  post '/get_areas', to: 'crags#get_crags'
  post '/get_climbs', to: 'mpapi#show'
  # post '/get_user_crags', to: 'users#crags'
  get '/profile', to: 'users#profile'
  

end
