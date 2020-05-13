class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  belongs_to :restaurant
end
