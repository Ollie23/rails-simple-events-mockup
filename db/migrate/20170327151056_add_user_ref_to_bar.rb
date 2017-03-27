class AddUserRefToBar < ActiveRecord::Migration[5.0]
  def change
    add_reference :bars, :user, foreign_key: true
  end
end
