Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :create ]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  # get "restaurants", to: "restaurants#index", as: :restaurants
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create", as: :create_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: :new_review
  # post "restaurants/:id/reviews", to: "reviews#create", as: :restaurant_reviews
end
