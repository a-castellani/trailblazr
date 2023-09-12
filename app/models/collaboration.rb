class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary

  validates :role, :email, presence: true

  has_many :notifications, as: :recipient, dependent: :nullify
  # accepts_nested_attributes_for :user

  # validates :email , format: { with: /\A[a-z0-9]+([_.-][a-z0-9]+)*@[a-z0-9]+([_.-][a-z0-9]+)*\z/i, message: "The formatting is incorrect, the allowed characters are (a-z), numbers (0-9), underscores (_), English periods (.) , and hyphens (-), and a full stop (.) cannot be at the beginning or end, and special characters should be followed by one or more letters or numbers."}
end
