class AddActivityToRecords < ActiveRecord::Migration[7.2]
  def change
    add_column :records, :activity, :string
  end
end
