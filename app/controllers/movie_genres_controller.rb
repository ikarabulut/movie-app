class MovieGenresController < ApplicationController

  def create
    genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    genre.save
    render json: genre.as_json
  end
  
end
