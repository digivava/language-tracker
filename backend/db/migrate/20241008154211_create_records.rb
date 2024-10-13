class CreateRecords < ActiveRecord::Migration[7.2]
  def change
    create_table :records do |t|
      t.string :language
      t.integer :number
      t.string :units
      t.datetime :timestamp

      t.timestamps
    end
  end
end
