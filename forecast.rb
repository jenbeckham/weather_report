require './requires.rb'

class Forecast10
  attr_reader :zipcode
  def initialize(zipcode)
    @forecast10page = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/CA/#{zipcode}.json")
  end

  def forecast
    count = 0
    while count < 20
      p "#{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["title"]} weather: #{@forecast10page["forecast"]["txt_forecast"]["forecastday"][count]["fcttext"]}"
      count += 1
    end
  end

  # def forecast_description
  #   @description = @forecast10page["forecast"]["txt_forecast"]["forecastday"][4]["fcttext"]
  # end
  #
  # def next_10_day_forecast
  #   @forecast10page.each do |i|
  #     puts "#{@day} will #{@description}"
  #   end
  # end
  #
  # def day_or_night_forecast
  #   @forecast10page.map {|i| i["forecast"]["txt_forecast"]["forecastday"]["period"] == 2%0}
  #   puts "Your daytime weather on #{@day} looks #{@description.downcase}"
  # end


end
