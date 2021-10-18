Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_movies" => "movies#all_movies"
  get "/all_movies/actor" => "movies#show"
  get "/all_movies/actor/:id" => "movies#show"
  post "/all_movies/actor" => "movies#post_actor"
end
