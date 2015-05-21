require './requires.rb'

class Conditions
  attr_reader :zipcode, :conditionspage
  def initialize(zipcode)
    @zipcode = zipcode
    @conditionspage = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/CA/#{zipcode}.json")
  end

  def location_name
    @location_name = @conditionspage["current_observation"]["display_location"]["full"]
  end

  def temp_f
    puts "The current temperature is #{@conditionspage["current_observation"]["temp_f"]} in #{@location_name}"
  end

  def weather
    puts "It looks #{@conditionspage["current_observation"]["weather"]} in #{@location_name} right now"
  end

  def wind_speeds
    puts "The wind in #{@location_name} is #{@conditionspage["current_observation"]["wind_mph"]}mph
    with gusts of #{@conditionspage["current_observation"]["wind_gust-mph"]}mph"
  end

  def humidity
    puts "The humidity in #{@location_name} is #{@conditionspage["current_observation"]["relative_humidity"]}"
  end

  def feels_like
    puts "It feels like #{@conditionspage["current_observation"]["feelslike_f"]} in #{@location_name}"
  end

end
