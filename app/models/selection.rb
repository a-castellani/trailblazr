class Selection < ApplicationRecord
  belongs_to :itinerary
  belongs_to :activity

  has_many :messages
  has_many :reviews

  # validates :activity, uniqueness: { scope: :itinerary }

  # accepts_nested_attributes_for :itinerary
  # accepts_nested_attributes_for :activity

  def same_activity_for_diff_days
    Selection.where(itinerary: self.itinerary, activity: self.activity).reject { |s| s.day.nil? }
  end
end
