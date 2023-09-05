class Itinerary < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :activities, through: :selections
  has_many :collaborations, dependent: :destroy
  has_many :users, through: :collaborations
  has_many :messages, dependent: :destroy
end
