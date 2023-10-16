class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.integer :type
      t.string :title
      t.text :description
      t.integer :account_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
