class Itinerary < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :activities, through: :selections
  has_many :collaborations
  has_many :users
end
