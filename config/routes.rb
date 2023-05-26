Rails.application.routes.draw do
  root "pets#index"

  resources :pets
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"
