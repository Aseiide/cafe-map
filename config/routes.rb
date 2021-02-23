Rails.application.routes.draw do
  root to: "cafes#index"
  resources :cafes
  get '/signup', to: 'users#new'
  namespace :admin do
    resources :cafes, only: %i(new create index)
  end
end
