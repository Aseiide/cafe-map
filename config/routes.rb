Rails.application.routes.draw do
  root to: "cafes#index"
  resources :cafes
  get '/signup', to: 'users#new'
  namespace :admin do
    resources :cafes
  end
end
