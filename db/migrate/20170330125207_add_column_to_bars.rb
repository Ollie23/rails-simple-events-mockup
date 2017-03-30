class AddColumnToBars < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :description, :string
    add_column :bars, :type, :string
    add_column :bars, :o_time, :time
    add_column :bars, :c_time, :time
    add_column :bars, :wifi, :boolean
    add_column :bars, :tv, :integer
    add_column :bars, :bathroom, :integer
  end
end
