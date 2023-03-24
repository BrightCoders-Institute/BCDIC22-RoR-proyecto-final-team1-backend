# frozen_string_literal: true

Rails.application.routes.draw do
  get 'private/test'
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

  namespace :users do
    resources :users, only: %i[index show update destroy]
  end
  resources :amenities, only: [:index, :show, :create, :update, :destroy]
end
