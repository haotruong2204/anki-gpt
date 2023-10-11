class CreateKanjis < ActiveRecord::Migration[7.0]
  def change
    create_table :kanjis do |t|
      t.string :on
      t.string :kun
      t.text :svg
      t.string :yin_han
      t.string :meaning
      t.string :chinese_character

      t.timestamps
    end
  end
end
