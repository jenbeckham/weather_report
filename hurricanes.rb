require './requires.rb'

class Hurricanes
  attr_reader :hurricane_page
  def initialize#(zipcode)
    # @zipcode = zipcode
    @hurricane_page = get_data
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
  end

  def hurricane_name
    @hurricane_page["currenthurricane"][0]["stormInfo"]["stormName"]
  end

  def hurricane_category
    @hurricane_page["currenthurricane"][0]["Current"]["SaffirSimpsonCategory"]
  end

  def hurricane_time
    @hurricane_page["currenthurricane"][0]["Current"]["Time"]["pretty"]
  end

  def hurricane_wind_speed
    @hurricane_page["currenthurricane"][0]["Current"]["WindSpeed"]["Mph"]
  end

  def hurricane_info
    if @hurricane_page["response"]["features"] == {}
      return "Currently no hurricanes"
    else
      count = 0
      @hurricane_page.each do
      return "#{@hurricane_page["currenthurricane"][count]["stormInfo"]["stormName"]} is a category #{@hurricane_page["currenthurricane"][count]["Current"]["SaffirSimpsonCategory"]}. With wind speeds of #{@hurricane_page["currenthurricane"][count]["Current"]["WindSpeed"]["Mph"]}mph at #{@hurricane_page["currenthurricane"][count]["Current"]["Time"]["pretty"]}."
      count += 1
      end
    end
  end

end
