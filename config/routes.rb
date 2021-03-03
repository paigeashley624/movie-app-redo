Rails.application.routes.draw do
  namespace :api do
    get "/movies", controller: "movies", action: "index"
    post "/movies", controller: "movies", action: "create"
    get "/movies", controller: "movies", action: "show"
    patch "/movies", controller: "movies", action: "update"
    delete "/movies", controller: "movies", action: "destroy"

    get "/actors/:id", controller: "actors", action: "index"
    post "/actors/:id", controller: "actors", action: "create"
    get "/actors/:id", controller: "actors", action: "show"
    patch "/actors/:id", controller: "actors", action: "update"
    delete "/actors/:id", controller: "actors", action: "destroy"
  end
end
