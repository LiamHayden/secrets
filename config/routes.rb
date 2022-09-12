Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
=======
  
>>>>>>> 81a63c2d389c65db219804cc0e314a85d3b12471
  root "posts#index"
  resources :posts, only: [:new, :create, :index]
end
