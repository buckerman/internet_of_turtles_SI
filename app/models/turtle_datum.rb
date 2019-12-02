class TurtleDatum < ApplicationRecord
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :turtle, presence: true

  belongs_to :turtle

end
