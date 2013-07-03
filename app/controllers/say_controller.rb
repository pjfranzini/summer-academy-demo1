class SayController < ApplicationController
  def hello
  	@time = Time.now.in_time_zone("Eastern Time (US & Canada)")
    @timeParis = Time.now.in_time_zone("Paris")
    @timeParisNice = @timeParis.strftime('%I:%M %p')
    @timeLondon = Time.now.in_time_zone("London")
    @timeLondonNice = @timeLondon.strftime('%I:%M %p')
    @timeBeijing = Time.now.in_time_zone("Beijing")
    @timeBeijingNice = @timeBeijing.strftime('%I:%M %p')
  	@daysmonth = @time.end_of_month.day
  	@secsSince = @time.seconds_since_midnight
  	@secsLeft = @time.seconds_until_end_of_day()
  	@date = Date.today
  	@month = @date.strftime('%B')
  	@niceDay = @date.strftime('%B %d, %Y')
  end

  def goodbye
  end
end
 