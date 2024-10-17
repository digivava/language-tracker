class User < ApplicationRecord
    has_and_belongs_to_many :languages
    has_many :records
end
