Rails.application.routes.draw do
  resources :target_climbs
  resources :tick_lists
  resources :climbs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
