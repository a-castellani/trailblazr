class Activity < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :itineraries, through: :selections
end
