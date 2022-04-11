Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/national_parks" => "national_parks#index"
  post "/national_parks" => "national_parks#create"
  delete "/national_parks/:id" => "national_parks#destroy"
end
