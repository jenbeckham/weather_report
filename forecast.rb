require './requires.rb'

class Forecast10
  attr_reader :zipcode
  def initialize(zipcode)
    @forecast10page = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/CA/#{zipcode}.json")
  end
end
