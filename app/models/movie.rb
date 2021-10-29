class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: {in: 50..5000}

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    movies = Movie.all
    genre_names = movies.genres.names
    return genre_names
  end
end
