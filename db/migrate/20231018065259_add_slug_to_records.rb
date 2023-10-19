class AddSlugToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :slug, :string
    add_index :records, :slug, unique: true
  end
end
