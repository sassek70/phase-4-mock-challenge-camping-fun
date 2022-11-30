class Camper < ApplicationRecord
    validates :name, presence: true
    validates :age, inclusion: 8..18
    # validates :age, numericality: {greater_than_or_equal_to: 18, less_than_or_equal_to: 65 }
    has_many :signups
    has_many :activities, through: :signups
end
