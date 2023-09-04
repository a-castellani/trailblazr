class Itinerary < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :activities, through: :selections
end
