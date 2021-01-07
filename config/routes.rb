Rails.application.routes.draw do
  root to: "cafes#index"
  resources :cafes
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
