class Record < ApplicationRecord
    validates :language, presence: true, inclusion: { in: %w(Arabic Amharic Cantonese Dutch French German Japanese Korean Mandarin Norwegian Persian Portuguese Russian Spanish Vietnamese) }
    validates :number, presence: true, numericality: true, comparison: { greater_than: 0 }
    validates :units, presence: true, inclusion: { in: %w(minutes hours) }

    before_validation :capitalize_language, :downcase_units

    private
    def capitalize_language
        self.language = language.downcase.capitalize if language.present?
    end

    private
    def downcase_units
        self.units = units.downcase if units.present?
    end
end
