Rails.application.routes.draw do
  
  resources :target_climbs
  resources :tick_lists
  resources :climbs
  resources :users

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
