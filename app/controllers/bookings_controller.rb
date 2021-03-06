class BookingsController < ApplicationController

def index
    @bookings = Booking.all
end 

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
        redirect_to artist_bookings_path(@artist)
    else 
        render :new
    end  
end 

def destroy
    @booking = Booking.find(params[:id])
    @artist = @booking.artist
    @booking.destroy
    redirect_to artist_bookings_path(@artist)
end


private 

def params_booking
    params.require(:booking).permit(:artist_id, :date)
end

end
