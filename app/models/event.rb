class Event < ApplicationRecord
  belongs_to :bar
  has_many :users, through: :rsvp
  validates :title, presence: true
  validates :date, presence: true

  def sorted
    self.order(:date)
  end
end
