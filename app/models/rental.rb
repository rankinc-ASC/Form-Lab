class Rental < ApplicationRecord
    # :customerName, :customerContact, :numDays, :mileage,
    # :returned, :confirmCode, car_id

    belongs_to :car

    validates_presence_of :customerName, :customerContact, :car_id, :numDays, :mileage

    validates_length_of :customerName, :maximum => 50
    validates_length_of :customerContact, :maximum => 50

    validates :numDays, numericality: { greater_than: 0, less_than: 1825 }
    validates :mileage, numericality: { greater_than: 0, less_than: 2147483646 }
end
