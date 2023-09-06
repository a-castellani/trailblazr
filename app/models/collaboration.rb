class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary

  validates :role, presence: true
end
