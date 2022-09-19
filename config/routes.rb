Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root "posts#index"
  get '/posts/index'
  get '/users/sign_in'
  get '/users/sign_out'
  resources :posts, only: [:new, :create, :index]
end
