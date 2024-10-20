class Language < ApplicationRecord
    has_many :records
    has_and_belongs_to_many :users

    validates :name, presence: true
end
