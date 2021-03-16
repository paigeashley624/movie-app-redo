Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #Movies
    get "/movies", controller: "movies", action: "index"
    post "/movies", controller: "movies", action: "create"
    get "/movies/:id", controller: "movies", action: "show"
    patch "/movies/:id", controller: "movies", action: "update"
    delete "/movies/:id", controller: "movies", action: "destroy"

    #Actors
    get "/actors/", controller: "actors", action: "index"
    post "/actors/", controller: "actors", action: "create"
    get "/actors/:id", controller: "actors", action: "show"
    patch "/actors/:id", controller: "actors", action: "update"
    delete "/actors/:id", controller: "actors", action: "destroy"

    #Users
    post "/users", controller: "users", action: "create"

    #Sessions
    post "/sessions", controller: "sessions", action: "create"

    #Admin ??

    post "/admins/", controller: "admins", action: "create"
    patch "/admins/:id", controller: "admins", action: "update"
    delete "/admins/:id", controller: "admins", action: "destroy"

    #Movie_genres

    post "/movie_genres", controller: "movie_genres", action: "create"
  end
end
