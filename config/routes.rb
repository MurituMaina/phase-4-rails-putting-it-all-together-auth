Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/recipes', to: "recipes#show"
  # get '/users', to: "users#index"
  post 'signup', to:"users#create"
  get '/me', to: "users#show"
  post 'login', to:"sessions#create"
  delete 'logout', to:"sessions#destroy"
# get "/recipes", to: "recipes#index"
# post "/recipes", to: "recipes#create"
resources :recipes, only: [:create, :index]
end
