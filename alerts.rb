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
    # count = self.number_of_alerts.to_i
    # self.individual_alert

    if self.number_of_alerts.to_i == 0
      "No alerts at this time"
    else
      count = 0
      self.individual_alert.each do
      return "Current time is #{self.individual_alert[count]["date"]}" #a["alerts"][count]["message"]}."
      count += 1
      end
    end
  end
end
