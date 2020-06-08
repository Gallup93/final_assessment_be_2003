Rails.application.routes.draw do
  get "/doctors/:id", to: "doctors#show"
  post "/doctors/:id", to: "doctors#create"
  get "/hospitals/:id/new", to: "doctors#new"

  get "/hospitals/:id", to: "hospitals#show"

  get "/hospitals/:id/patients", to: "patients#index"
end
