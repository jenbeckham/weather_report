require './requires.rb'

class Alerts
  attr_reader :zipcode
  def initialize(zipcode)
    @alertpage = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/IA/#{zipcode}.json")
  end
end

# require 'open-uri'
# require 'json'
# open('http://api.wunderground.com/api/3f690b78b05f6dd3/geolookup/conditions/q/IA/Cedar_Rapids.json') do |f|
#   json_string = f.read
#   parsed_json = JSON.parse(json_string)
#   location = parsed_json['location']['city']
#   temp_f = parsed_json['current_observation']['temp_f']
#   print "Current temperature in #{location} is: #{temp_f}\n"
# end
