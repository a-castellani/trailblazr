class Itinerary < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :activities, through: :selections
  has_many :collaborations, dependent: :destroy
  has_many :users, through: :collaborations
  has_many :messages, dependent: :destroy

  validates :title, presence: true

  # after_create :create_collaboration

  # def create_collaboration
  #   collaborations.create(user_id: )
  # end
  # Don't use validates_associated on both ends of your associations. They would call each other in an infinite loop.
  # validates_associated :collaborations
  # validate :at_least_owner_collaboration

  # private

  # def at_least_owner_collaboration
  #   if collaborations.empty?
  #     errors.add(:base, "An itinerary must have an owner")
  #   end
  # end
end
