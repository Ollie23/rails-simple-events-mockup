class Event < ApplicationRecord
  belongs_to :bar
  has_many :users, through: :rsvp
  validates :title, presence: true
  validates :location, presence: true
end
