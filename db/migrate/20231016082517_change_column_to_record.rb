class ChangeColumnToRecord < ActiveRecord::Migration[7.0]
  def change
    rename_column :records, :type, :type_record
    rename_column :histories, :type, :type_history
  end
end
