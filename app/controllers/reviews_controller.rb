class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @artist = Artist.find(params[:artist_id])
    @review.artist_id = @artist.id
    @review.save
    redirect_to artist_review_path(@artist.id, @review.id)
  end

  #def show
  # @review = Review.find(params[:id])
  #end

  def destroy
    @review = Review.find(params[:id])
    @artist = Artist.find(params[:artist_id])
    @artist.review.destroy
    redirect_to artist_review_path(@artist.id, @review.id)
  end

  private

  def params_review
    params.require(:review).permit(:comment, :rating, :artist_id)
  end
end
