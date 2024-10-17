class CreateUsersLanguages < ActiveRecord::Migration[7.2]
  def change
    create_table :users_languages do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :language, null: false, foreign_key: true
    end
  end
end
