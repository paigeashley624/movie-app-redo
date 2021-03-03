Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies", controller: "movies", action: "index"
    post "/movies", controller: "movies", action: "create"
    get "/movies/:id", controller: "movies", action: "show"
    patch "/movies/:id", controller: "movies", action: "update"
    delete "/movies/:id", controller: "movies", action: "destroy"

    get "/actors/", controller: "actors", action: "index"
    post "/actors/", controller: "actors", action: "create"
    get "/actors/:id", controller: "actors", action: "show"
    patch "/actors/:id", controller: "actors", action: "update"
    delete "/actors/:id", controller: "actors", action: "destroy"
  end
end
