class ArtistsController < ApplicationController

  before_action :set_artist, only: [ :edit, :update, :destroy]

  def index
      if params[:query].present?
        @artists = Artist.where("band_name ILIKE ?", "%#{params[:query]}%")
      else
        @artists = Artist.all
      end 
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params_artist)
    if @artist.save
      redirect_to root_path
    else
      render :new
    end
  end
        
  def edit
  end

  def show
    @artist = Artist.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def update
    @artist = @artist.update(params_artist)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist.destroy
    redirect_to root_path
  end

  private

  def params_artist
    params.require(:artist).permit(:band_name, :photo_url, :music_url, :price, :location, :area_range, :description, :category_id)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end


end
