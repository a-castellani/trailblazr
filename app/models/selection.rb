class Selection < ApplicationRecord
  belongs_to :itinerary
  belongs_to :activity

  has_many :messages
  has_many :reviews
end
