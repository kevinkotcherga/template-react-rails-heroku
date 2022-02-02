Rails.application.routes.draw do
  namespace :api do
    resources :notes, only: [:index]

    get "/me", to: "users#show"
    post "/signup", to: "users#create"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
end
