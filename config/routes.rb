Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/places', to: 'places#index'
  get '/places/:id', to: 'places#show'
  post '/newPlace', to: 'places#create'
end
