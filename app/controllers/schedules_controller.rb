class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
    @artist = Artist.find(params[:artist_id])
  end
end
