class AddUserRefAndLanguageRefToRecords < ActiveRecord::Migration[7.2]
  def change
    add_reference :records, :user, null: false, foreign_key: true
    add_reference :records, :language, null: false, foreign_key: true
  end
end
