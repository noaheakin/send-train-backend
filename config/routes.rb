Rails.application.routes.draw do

  resources :crags
  resources :target_climbs
  resources :tick_lists
  resources :climbs
  resources :users

  post '/login', to: 'users#login'
  post '/register', to: 'users#create'
  post '/get_areas', to: 'crags#show'
  get '/profile', to: 'users#profile'
  

end
