class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params_artist)
    if @artist.save
      redirect_to home_path
    else
      render :new
    end
  end
        
  def edit
  end

  def show
  end

  def update
    @artist = @artist.update(params_artist)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist.destroy
    redirect_to home_path
  end

  private

  def params_artist
    params.require(:artist).permit(:band_name, :photo_url, :music_url, :price, :location, :area_range, :description, :category)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end


end
