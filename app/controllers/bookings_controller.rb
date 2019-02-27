class BookingsController < ApplicationController
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(params_booking)
        @profile = Profile.find(params[:profile_id])
        @artist = Artist.find(params[:artist_id])
        @booking.profile = @profile
        @booking.artist = @artist 
        # if @booking.save 
        #     Change @booking.date status in the schedule table 
        #     redirect_to VALIDATION_SCREEN 
        # else 
        #   render :new
        #end  
    end 

    private 

    def params_booking
        params.require(:booking).permit(:artist_id, :profile_id, :date)
    end
end
