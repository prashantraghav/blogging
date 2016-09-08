class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def set_title_bar
    @title = "Jinal Dedhia"
    @host = "http://jinaldedhia.com"
    @footer = {blockquote: @profile.try(:footer), blockquote_footer: @profile.try(:footer_author) || "Jinal Dedhia"}
  end

  def get_profile
    @profile = Profile.first
    redirect_to new_profile_path unless @profile
  end
end
