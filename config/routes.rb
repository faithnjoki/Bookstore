Rails.application.routes.draw do
  resources :mybooks
  resources :books
  # get 'home/index'
  get 'home/book'
  
  root  'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
