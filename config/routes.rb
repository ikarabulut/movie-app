Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#update"
  post "/movies" => "movies#create"
  delete "/movies/:id" => "movies#destroy"
end
