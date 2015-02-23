class HomeController < ApplicationController
  def index
    right_now = Time.now #now the time is stored it is done ONCE

    @current_time = right_now.to_formatted_s(:short) #we are using right now

    #Adjust message by time of day
    @greet_message = case right_now.hour #we are using right now AGAIN
    when 5..11
      "Good Morning, ya'll"
    when 12..15
      "Happy Afternoon"
    when 16..19
      "Good Evening"
    when 20..23, 0..4
      "Good Night, get some sleep"
    end
  end
end
