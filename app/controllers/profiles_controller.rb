class ProfilesController < ApplicationController
  before_action :set_profile, only: [ :show, :edit, :update ]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to profile_path
  end

  def show
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :user_type)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
