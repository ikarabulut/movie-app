class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: {in: 50..5000}

  has_many :actors
end
