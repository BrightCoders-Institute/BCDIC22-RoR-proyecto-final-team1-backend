# frozen_string_literal: true

Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  # Defines the root path route ("/")
  # root "articles#index"
  get '/places', to: 'places#index'
  get '/place/:id', to: 'places#show'
  post '/newPlace', to: 'places#create'

  namespace :users do
    resources :users, only: %i[index show update destroy]
  end
  
  resources :amenities, only: [:index, :show, :create, :update, :destroy]
  resources :states, only: [:index, :show, :create, :update, :destroy]
end
