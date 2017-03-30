class Event < ApplicationRecord
  belongs_to :bar
  has_many :users, through: :rsvps
  has_many :rsvps
  validates :title, presence: true
  validates :date, presence: true

  def sorted
    self.order(:date)
  end

  def is_attending?(user)
    self.users.pluck(:id).include?(user.id) ? true : false
  end

end
