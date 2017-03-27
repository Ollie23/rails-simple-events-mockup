class AddEventRefToRsvp < ActiveRecord::Migration[5.0]
  def change
    add_reference :rsvps, :event, foreign_key: true
  end
end
