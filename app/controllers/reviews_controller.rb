class ReviewsController < ApplicationController

  def new 
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end 

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(params_review)
    @review.booking = @booking
    @review.save?
    redirect_to artist_path(artist)
  end


  private
  def params_review
    params.require(:review).permits.(:rating, :comment)
  end

end
