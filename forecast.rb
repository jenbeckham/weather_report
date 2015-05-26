require './requires.rb'

class Forecast10
  attr_reader :zipcode
  def initialize(zipcode)
    @zipcode = zipcode
    @forecast10page = get_data
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/CA/#{zipcode}.json")
  end

  def forecast
    count = 0
    while count < 20
      return "#{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["title"]} weather: #{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["fcttext"]}"
      count += 1
    end
  end
end
