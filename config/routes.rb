Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users_plants, only: [:create]
      resources :plants
      resources :users
      post "/signup", to: "users#create"
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
      get "/current_user", to: "auth#show"
    end
  end
end
