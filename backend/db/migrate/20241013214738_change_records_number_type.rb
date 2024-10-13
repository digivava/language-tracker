class ChangeRecordsNumberType < ActiveRecord::Migration[7.2]
  def change
    reversible do |direction|
      change_table :records do |t|
        direction.up   { t.change :number, :float }
        direction.down { t.change :number, :integer }
      end
    end
  end
end
