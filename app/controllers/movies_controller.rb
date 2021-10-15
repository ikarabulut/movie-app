class MoviesController < ApplicationController
  def all_movies
    all_movies = Movie.all
    render json: all_movies.as_json
  end

end
