class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :account_id
      t.integer :type
      t.text :kanji_list
      t.string :title

      t.timestamps
    end
  end
end
