class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, presence: true
  validates :director, presence: true

  has_many :actors
  belongs_to :genre
  # has_many :genres through :movie_genres
end
