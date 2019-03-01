class ReviewsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @reviews = Review.where(artist_id: params[:artist_id])
  end

  def new
    @review = Review.new
    # @artist.review_id = @Review
  end

  def create
    @review = Review.new(params_review)
    @artist = Artist.find(params[:artist_id])
    @review.artist_id = @artist.id
    @review.save
    redirect_to artist_reviews_path(@artist.id)
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to artist_reviews_path(@artist.id)
  end

  private

  def params_review
    params.require(:review).permit(:comment, :rating, :artist_id)
  end
end
