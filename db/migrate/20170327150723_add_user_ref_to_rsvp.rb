class AddUserRefToRsvp < ActiveRecord::Migration[5.0]
  def change
    add_reference :rsvps, :user, foreign_key: true
  end
end
