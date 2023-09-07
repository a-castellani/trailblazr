class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary

  validates :role, :email, presence: true
  accepts_nested_attributes_for :user
end
