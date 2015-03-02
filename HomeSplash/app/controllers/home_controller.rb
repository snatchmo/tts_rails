class HomeController < ApplicationController
  def index
    right_now = Time.now #now the time is stored it is done ONCE

    @current_time = right_now.stamp_like("Jan 1, 2000 ~ 3:00 am") #we are using right now

    #Adjust message by time of day
    @greet_message = case right_now.hour #we are using right now AGAIN
    when 5..11
      "Good Morning, ya\'ll <i class='fa fa-sun-o'></i> x".html_safe
    when 12..15
      "Happy Afternoon <i class='fa fa-car'></i> z".html_safe
    when 16..19
      "Good Evening X"
    when 20..23, 0..4
      "Good Night, get some <i class='fa fa-bed'></i> Z".html_safe
    end
  end
end
