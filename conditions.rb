require './requires.rb'

class Conditions
  attr_reader :zipcode, :conditionspage
  def initialize(zipcode)
    @zipcode = zipcode
    @conditionspage = get_data
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/CA/#{zipcode}.json")
  end

  def location_name
    @conditionspage["current_observation"]["display_location"]["full"]
  end

  def temp
    @conditionspage["current_observation"]["temp_f"]
  end

  def weather
    @conditionspage["current_observation"]["weather"]
  end

  def wind_speeds
    if @conditionspage["current_observation"]["wind_gust_mph"] == "0.0"
      return "Winds are #{@conditionspage["current_observation"]["wind_mph"]}mph"
    else
      return "Winds are #{@conditionspage["current_observation"]["wind_mph"]}mph with gusts of #{@conditionspage["current_observation"]["wind_gust_mph"]}mph"
    end
  end

  def humidity
    @conditionspage["current_observation"]["relative_humidity"]
  end

  def feels_like
    @conditionspage["current_observation"]["feelslike_f"]
  end

  def current_info
    "The current temperature is " + self.temp.to_s + "F in " + self.location_name + ", but feels like "+ self.feels_like + "F. Its " + self.weather + " with a humidity of " + self.humidity + ". "+ self.wind_speeds
  end

end
