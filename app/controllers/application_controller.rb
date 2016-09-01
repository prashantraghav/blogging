class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_title_bar

  def set_title_bar
    @title = "Hi! I'm Jinal"
  end
end
