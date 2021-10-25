class Actor < ApplicationRecord

  validates :first_name, length: {minimum: 2}
  validates :last_name, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {minimum: 13}

  belongs_to :movie

  def plot
    movie = Movie.find_by(id: Actor.movie_id)
    plot = movie.plot
    return plot
  end

    
end
