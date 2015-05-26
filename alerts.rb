require './requires.rb'

class Alerts
  attr_reader :zipcode
  def initialize(zipcode)
    @zipcode = zipcode
    @alert_page = get_data
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/IA/#{zipcode}.json")
  end

  def number_of_alerts
    @number_of_alerts = @alert_page["response"]["features"]["alerts"]
  end

  def individual_alert
    @individual_alert = @alert_page["alerts"]
  end

  def alert_info
    count = @number_of_alerts
    if count == 0
      return "No alerts at this time"
    else
      until count  == 0
        @alert_page.each do
          return "Current time is #{@individual_alert[count]["date"]}. #{@individual_alert[count]["message"]}."
          count -= 1
        end
      end
    end
  end
end
