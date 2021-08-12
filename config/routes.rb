Rails.application.routes.draw do
  #Home page
  root 'users#index'

  # Sets up devise routes 
  devise_for :users

  # sets up all listings and user routes
  resources :listings
  resources :users

  #Sets up payment routes for payment controller
  get "/payments/success", to: "payments#success"
  post "payments/webhook", to: "payments#webhook"

end
