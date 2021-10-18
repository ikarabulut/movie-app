class MoviesController < ApplicationController
  def all_movies
    all_movies = Movie.all
    render json: all_movies.as_json
  end

  def show
    index = params[:id]
    actor = Actor.find_by(id: index)
    render json: actor.as_json
  end

  def post_actor
    index = params[:id]
    actor = Actor.find_by(id: index)
    render json: actor.as_json
  end

end
