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
  get '/places', to: 'places#index'
  get '/place/:id', to: 'places#show'
  post '/newPlace', to: 'places#create'

  get '/reviews/:place_id', to: 'reviews#show'
  post '/newReview', to: 'reviews#create'

  post '/newReservation/', to: 'reservations#create'
  get '/reservations/:user_id', to: 'reservations#show'
  namespace :users do
    resources :users, only: %i[index show update destroy]
  end

  resources :amenities, only: [:index, :show, :create, :update, :destroy]
  resources :cities, only: [:index, :show, :create, :update, :destroy]
  resources :states, only: [:index, :show, :create, :update, :destroy]
end
