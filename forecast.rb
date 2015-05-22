require './requires.rb'

class Forecast10
  attr_reader :zipcode
  def initialize(zipcode)
    @forecast10page = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/CA/#{zipcode}.json")
  end

  def forecast
    count = 0
    while count < 20
      return "#{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["title"]} weather: #{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["fcttext"]}"
      count += 1
    end
  end
end
