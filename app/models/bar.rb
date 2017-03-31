class Bar < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

end
