class RemoveTimestampFromRecords < ActiveRecord::Migration[7.2]
  def change
    remove_column :records, :timestamp
  end
end
