Rails.application.routes.draw do
  
	resources :amenities, only: [:index, :show, :create, :update, :destroy]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
