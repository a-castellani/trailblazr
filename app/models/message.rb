class Message < ApplicationRecord
  belongs_to :user
  belongs_to :selection, optional: true
  belongs_to :itinerary
end
