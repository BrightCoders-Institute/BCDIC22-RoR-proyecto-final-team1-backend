# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  # resources :users, only: %i[index show create update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
