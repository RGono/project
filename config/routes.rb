Rails.application.routes.draw do
  get '/signup' => 'care_givers#new'
  post '/signup' => 'care_givers#create'
  
  resources :comments
  resources :daily_activities
  resources :children
  resources :care_givers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
