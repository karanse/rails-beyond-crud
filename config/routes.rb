# Rails.application.routes.draw do
#   resources :restaurants
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
#   resources :restaurants
# end

# config/routes.rb
Rails.application.routes.draw do
  # GET /restaurants/42/chef
  #  get "restaurants/:id/chef", to: "restaurants#chef", as: "chef_restaurant"
  resources :restaurants do
    # GET /restaurants/:id/reviews/new
    resources :reviews, only: [:new, :create]
    # collection == custom index (many elements)
    collection do
      # /restaurants
      get :top
    end

    # member == custom showpage (specific element)
    member do
      # /restaurants/:id
      get :chef
    end
  end
  resources :reviews, only: [:destroy]
end
