class HomeController < ApplicationController
  layout 'home'

  def index
    @greeting = @profile.greetings
    @who_i_am = @profile.who_i_am
    
    @display_picture = @profile.pic
    @slides = [@profile.slide1, @profile.slide2, @profile.slide3, @profile.slide4, @profile.slide5]

    @blogs = Blog.recent 5
  end

end
