class Actor < ApplicationRecord

  belongs_to :movie

  validates :first_name, :last_name, length: { minimum: 2 }
  validates :known_for, :gender, presence: true
  validates :age, numericality: {greater_than_or_equal_to: 13}


end
