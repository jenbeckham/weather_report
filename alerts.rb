require './requires.rb'

class Alerts
  attr_reader :zipcode, :number_of_alerts, :individual_alert
  def initialize(zipcode)
    @zipcode = zipcode
    @alert_page = get_data
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{zipcode}.json")
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
    if @number_of_alerts == 0
      return "No alerts at this time"
    end
    count = 0
    self.individual_alert.each do
      return "Current time is #{@individual_alert[count]["date"]}: #{@individual_alert[count]["message"].gsub(/(\\n)/, "")}."
      count += 1
    end
  end
end
