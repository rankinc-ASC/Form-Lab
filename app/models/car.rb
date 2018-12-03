class Car < ApplicationRecord
    # :name, :totalMileage, :rented, :type_id

    belongs_to :carType
    has_many :rentals

    validates_presence_of :name, :totalMileage, :rented, :type_id

    validates_length_of :name, maximum: 50

    validates :totalMileage, numericality: { greater_than: 0, less_than: 2147483646 }
end
