class CreateKanjiLearningMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :kanji_learning_methods do |t|
      t.integer :kanji_id
      t.text :content
      t.integer :account_id
      t.integer :total_like, default: 0
      t.integer :total_unlike, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
