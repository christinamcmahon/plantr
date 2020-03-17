Rails.application.routes.draw do
  resources :users_plants
  resources :plants

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] # sign up
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
    end
  end
end
