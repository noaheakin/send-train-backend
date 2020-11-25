Rails.application.routes.draw do

  resources :crags
  resources :target_climbs
  resources :tick_lists
  resources :climbs
  resources :users

  # post '/login', to: 'users#login'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
