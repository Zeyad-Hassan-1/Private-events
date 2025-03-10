Rails.application.routes.draw do
  devise_for :users

  # Define RESTful routes for events
  resources :events

  # Root route (Uncomment if you want the homepage to show events)
  root "events#index"

  # Health check route (for monitoring)
  get "up" => "rails/health#show", as: :rails_health_check
end
