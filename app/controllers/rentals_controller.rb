class RentalsController < ApplicationController
    before_action :find_rental, only: [:destroy]

    def index
        @rentals = Rentals.all.order("created_at DESC")
    end

    def new
        @rental = Rental.new
    end

    def create
        @rental = Rental.new(rental_params)
        
    end

    def destroy
    end


    private
        def rental_params
            params.require(:rental).permit(:customerName, 
                :customerContact, :numDays, :mileage, :returned,
                :confirmCode)
        end
end
