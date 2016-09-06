class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  def set_title_bar
    @title = "Jinal Dedhia"
    @host = "http://jinaldedhia.com:9999/"
    @footer = {blockquote: @profile.try(:footer), blockquote_footer: "Jinal Dedhia"}
  end

  def get_profile
    @profile = Profile.first
    redirect_to new_profile_path unless @profile
  end
end
