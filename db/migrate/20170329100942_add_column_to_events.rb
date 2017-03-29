class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :date, :integer
    add_column :events, :date, :date
  end
end
