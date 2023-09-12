class Activity < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :itineraries, through: :selections
  has_many :reviews, through: :selections

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  validates :name, :category, :description, :number_of_people, :duration, :location, presence: true
end
