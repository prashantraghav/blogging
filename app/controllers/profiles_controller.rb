class ProfilesController < ApplicationController

  before_action :set_title_bar, :authenticate_user!

  def new
    @profile = Profile.new

    @page_heading = "Creating profile"
    @page_icon= "fa fa-user"
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash['notice'] = "Profile updated."
      redirect_to root_path
    else
      flash['alert'] = @profile.errors.full_messages

      @page_heading = "Creating profile"
      @page_icon= "fa fa-user"
      render :new
    end
  end

  def edit
    @profile = Profile.find params[:id]

    @page_heading = "Updating profile"
    @page_icon= "fa fa-user"
  end

  def update
    @profile = Profile.find params[:id]
    if @profile.update_attributes(profile_params)
      flash['notice'] = "Profile updated."
      redirect_to root_path
    else
      flash['alert'] = @profile.errors.full_messages

      @page_heading = "Updating profile"
      @page_icon= "fa fa-bookmark"
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:greetings, :who_i_am, :footer, :footer_author, :slide1, :slide2, :slide3, :slide4, :slide5, :pic)
  end
end
