class Record < ApplicationRecord
    validates :language, presence: true
    validates :number, presence:true, numericality: true
    validates :units, presence:true
end
