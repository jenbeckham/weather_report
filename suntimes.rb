class Suntimes
  attr_reader :zipcode
  def initialize(zipcode)
    @zipcode = (zipcode)
    @suntimes = get_data
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zipcode}.json")
  end

  def suntime(zipcode)
    "Sunrise at #{@suntimes["sun_phase"]["sunrise"]["hour"]}"+":"+"#{@suntimes["sun_phase"]["sunrise"]["minute"]}a.m."
    "Sunset at #{@suntimes["sun_phase"]["sunset"]["hour"]}"+":"+"#{@suntimes["sun_phase"]["sunset"]["minute"]}p.m."
  end
end
