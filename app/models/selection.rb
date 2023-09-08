class Selection < ApplicationRecord
  belongs_to :itinerary
  belongs_to :activity

  has_many :messages
  has_many :reviews

  # accepts_nested_attributes_for :itinerary
  # accepts_nested_attributes_for :activity
end
