require 'minitest/autorun'
require 'minitest/pride'
require './requires.rb'
require 'json'

class Hurricanes
  private def get_data
    JSON.parse(File.open("hurricanes.json").read)
  end
end

class Alerts
  private def get_data
    JSON.parse(File.open("alerts.json").read)
  end
end

class Forecast10
  private def get_data
    JSON.parse(File.open("forecast_10.json").read)
  end
end

class Suntimes
  private def get_data
    JSON.parse(File.open("suntimes.json").read)
  end
end

class Conditions
  private def get_data
    JSON.parse(File.open("conditions.json").read)
  end
end

class WeatherTest < Minitest::Test
  def test_01_conditions_class_exist
    assert Conditions.new(27607)
  end

  def test_02_conditions_current_temp
    current_conditions = Conditions.new(27607)
    assert_equal 82.1, current_conditions.temp
  end

  def test_03_conditions_weather
    current_conditions = Conditions.new(27601)
    assert_equal "Partly Cloudy", current_conditions.weather
  end

  def test_04_conditions_wind_speeds
    current_conditions = Conditions.new(27607)
    assert_equal "Winds are 0.0mph with gusts of 1.0mph", current_conditions.wind_speeds
  end

  def test_05_conditions_humidity
    current_conditions = Conditions.new(27607)
    assert_equal "44%", current_conditions.humidity
  end

  def test_06_conditions_feels_like
    current_conditions = Conditions.new(27607)
    assert_equal "82", current_conditions.feels_like
  end

  def test_07_current_info
    current_conditions = Conditions.new(27607)
    assert_equal "The current temperature is 82.1F in Raleigh, NC, but feels like 82F. Its Partly Cloudy with a humidity of 44%. Winds are 0.0mph with gusts of 1.0mph", current_conditions.current_info
  end

  def test_08_10_day_forecast_class_exist
    assert Forecast10.new(27607)
  end

  def test_09_10_week_forecast
    this_week = Forecast10.new(27607)
    assert this_week.forecast
  end

  def test_10_sun_times_class_exist
    assert Suntimes.new(27607)
  end

  def test_11_times
    sun = Suntimes.new(27607)
    assert_equal "Sunrise at 6:03a.m. Sunset at 8:20p.m.", sun.suntime
  end

  def test_14_number_of_alerts
    assert_equal 1, Alerts.new(27607).number_of_alerts
  end
  #
  # def test_16_alert_info
  #   assert Alerts.new(zipcode)
  # end
  #
  # def test_17_alert_date
  #   assert Alerts.new(27607)
  # end
  #
  # def test_18_alerts_expires
  #   assert Alerts.new(27615)
  # end
  #
  # def test_hurricanes_class_exist
  #   now = Hurricanes.new(27605)
  # end
  #
  # def test_hurricanes_name
  #   now = Hurricanes.new(27605)
  #   assert now.hurricane_name
  # end
  #
  # def test_hurricanes_category
  #   now = Hurricanes.new(27605)
  #   assert now.hurricane_category
  # end
  #
  # def test_hurricanes_windspeed
  #   now = Hurricanes.new(27605)
  #   assert now.hurricane_wind_speed
  # end
  #
  # def test_hurricane_time
  #   now = Hurricanes.new(27605)
  #   assert now.hurricane_time
  # end
  #
  # def test_hurricane_info
  #   now = Hurricanes.new
  #   p now.hurricane_info
  # end

end
