Rails.application.routes.draw do
  # MOVIE ROUTES
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  put "/movies/:id" => "movies#update"
  post "/movies" => "movies#create"
  delete "/movies/:id" => "movies#destroy"
  # ACTOR ROUTES
  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  put "/actors/:id" => "actors#update"
  post "/actors" => "actors#create"
  delete "/actors/:id" => "actors#destroy"
  # USER ROUTES
  post "/users" => "users#create"
  # SESSION ROUTES
  post "/sessions" => "sessions#create"
  # MOVIE_GENRE ROUTES
  post "/movie_genres" => "movie_genres#create"


end
