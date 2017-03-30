class RemoveColumnToBars < ActiveRecord::Migration[5.0]
  def change
    remove_column :bars, :type, :string
    add_column :bars, :category, :string
  end
end
