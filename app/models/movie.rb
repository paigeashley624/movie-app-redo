class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, presence: true
  validates :director, presence: true
end
