class Record < ApplicationRecord
    belongs_to :user
    belongs_to :language

    validates :language, presence: true
    validates :number, presence: true, numericality: true, comparison: { greater_than: 0 }
    validates :activity, presence: true
    validates :units, presence: true, inclusion: { in: %w(minutes hours) }

    before_validation :downcase_units, :downcase_activity

    private
    def downcase_units
        self.units = units.downcase if units.present?
    end

    private
    def downcase_activity
        self.activity = activity.downcase if activity.present?
    end
end
