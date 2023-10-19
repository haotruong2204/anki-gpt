class AddRecordIdToHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :histories, :record_id, :integer
  end
end
