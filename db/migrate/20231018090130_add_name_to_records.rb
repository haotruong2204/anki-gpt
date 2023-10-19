class AddNameToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :name, :string
  end
end
