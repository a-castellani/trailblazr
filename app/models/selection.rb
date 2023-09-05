class Selection < ApplicationRecord
  belongs_to :itinerary
  has_many :activities

  has_many :messages
  has_many :reviews
end
