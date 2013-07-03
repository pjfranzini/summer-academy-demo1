class SayController < ApplicationController
  def hello
  	@time = Time.now.in_time_zone("Eastern Time (US & Canada)")
    zoneA = ["American Samoa", "Alaska", "Amsterdam",
     "Athens", "Baghdad", "Beijing", "Brisbane","Budapest", "Cairo",
      "America/Chicago", "Copenhagen", "Hanoi", 
      "Hawaii", "Helsinki", "Istanbul", "Kabul", "Karachi", "Kathmandu", "Lisbon",
       "London", "America/Los_Angeles", "Madrid", "Mexico City", "Moscow", "Mumbai", "New Delhi",
        "America/New_York", "Novosibirsk", "Osaka","Paris", "Quito", "Rangoon",
       "Rome", "Seoul", "Stockholm","Sydney", "Taipei", "Tashkent","West Central Africa"]

    @timeA = Hash.new
    zoneA.each {|zone| @timeA[zone] = Time.now.in_time_zone(zone).strftime('%I:%M %p')}

  	@date = Date.today

  	@niceDay = @date.strftime('%A, %B %d, %Y')
  end

  def goodbye
    @time = Time.now.in_time_zone("Eastern Time (US & Canada)")
    @date = Date.today
    @month = @date.strftime('%B')
    @daysmonth = @time.end_of_month.day
    @secsSince = @time.seconds_since_midnight.round(0)
    @minsSince = (@secsSince/60).round(0)
    @secsLeft = @time.seconds_until_end_of_day()
    @minsLeft = (@secsLeft/60).round(0)
    @whatDay = @date.strftime('%j')
    @daysLeft = 365-@whatDay.to_i
  end
end
 