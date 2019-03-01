class BookingsController < ApplicationController

def new
    @booking = Booking.new
    @artist = Artist.find(params[:artist_id])
    @booking.artist = @artist
end

def create
    @booking = Booking.new(params_booking)
    @artist = Artist.find(params[:artist_id])
    @booking.profile = current_user.profile
    @booking.artist = @artist 
    if @booking.save 
        # Change @booking.date status in the schedule table 
        # redirect_to VALIDATION_SCREEN 
        redirect_to root_path
    else 
        render :new
    end  
end 

private 

def params_booking
    params.require(:booking).permit(:artist_id, :date)
end

end
