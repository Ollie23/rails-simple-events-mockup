class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events, through: :rsvp
  has_many :bars


  def bar_owner?
    self.bars.size > 0 ? true : false
  end

  def owns_bar?(bar)
    self.bars.include?(bar) ? true : false
  end
end
