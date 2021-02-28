Rails.application.routes.draw do
  root to: "cafes#index"
  get '/signup', to: 'users#new'

  resources :cafes, only: %i(index)

  namespace :admin do
    resources :cafes, only: %i(new create)
  end
end
