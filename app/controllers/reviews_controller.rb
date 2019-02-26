class ReviewsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @review = Review.new(params_review)
    @review.artist = @artist
    @review.save?
    redirect_to artist_path(artist)
  end

  private
  def params_review
    params.require(:review).permits.(:rating, :comment)
  end

end
