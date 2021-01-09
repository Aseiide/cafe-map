Rails.application.routes.draw do
  root to: "cafes#index"
  resources :cafes
  get '/signup', to: 'users#new'
  
end
