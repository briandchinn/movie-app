class Movie < ApplicationRecord

  has_many :actors

  validates :title, uniqueness: true
  validates :director, presence: true
  validates :year, numericality: { only_integer: true }
  validates :plot, length: { in: 10..1000 }

end
