class AddPhotoToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :profile, :string
    add_column :profiles, :photo, :string
  end
end
