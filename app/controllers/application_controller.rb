class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_title_bar, :get_profile

  def set_title_bar
    @title = "Jinal Dedhia"
  end

  def get_profile
    @profile = Profile.first
    @footer = {blockquote: @profile.footer, blockquote_footer: "Jinal Dedhia"}
  end
end
