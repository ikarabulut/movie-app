class MoviesController < ApplicationController
  # before_action :authenticate_admin, except [:index, :show]

  def index
    all_movies = Movie.all
    render json: all_movies.as_json
  end

  def show
    index = params[:id]
    movie = Movie.find_by(id: index)
    render json: movie.as_json
  end

  def update
    index = params[:id]
    movie = Movie.find_by(id: index)
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english
    if movie.save
      render json: movie.as_json
    else
      render json: {error: movie.errors.full_messages}
    end
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"]
    )
    if movie.save
      render json: movie.as_json
    else
      render json: {error: movie.errors.full_messages}
    end
  end

  def destroy
    index = params[:id]
    movie = Movie.find_by(id: index)
    movie.destroy
  end


end
