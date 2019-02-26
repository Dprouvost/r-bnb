class BookingsController < ApplicationController
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(params_booking)
        # if @booking.save
        #   PAYMENT PATH 
        # else 
        #   Back to booking create view 
        # end 
    end 

    private 

    def params_booking
        params.require(:booking).permit(:artist_id, :profile_id, :date)
    end
end
