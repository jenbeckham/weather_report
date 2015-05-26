require './requires.rb'

class Suntimes
  attr_reader :zipcode
  def initialize(zipcode)
    @zipcode = zipcode
    @suntimes = get_data
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zipcode}.json")
  end

  def suntime
    sunset = @suntimes["sun_phase"]["sunset"]["hour"].to_i-12
    "Sunrise at #{@suntimes["sun_phase"]["sunrise"]["hour"]}"+":"+"#{@suntimes["sun_phase"]["sunrise"]["minute"]}a.m. Sunset at #{sunset}"+":"+"#{@suntimes["sun_phase"]["sunset"]["minute"]}p.m."
  end
end
