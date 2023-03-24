Rails.application.routes.draw do
  get 'amenities/index'
  get 'amenities/show'
  get 'amenities/create'
  get 'amenities/update'
  get 'amenities/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
