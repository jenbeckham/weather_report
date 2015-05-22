require 'minitest/autorun'
require 'minitest/pride'
require './requires.rb'

class WeatherTest < Minitest::Test

  # def test_01_conditions_class_exist
  #   assert Conditions.new(27615)
  # end
  #
  # def test_02_conditions_current_temp
  #   current_conditions = Conditions.new(27515)
  #   assert current_conditions.temp_f
  # end
  #
  # def test_03_conditions_current_weather
  #   current_conditions = Conditions.new(27601)
  #   assert current_conditions.weather
  # end
  #
  # def test_04_conditions_wind_speeds
  #   current_conditions = Conditions.new(27605)
  #   assert current_conditions.wind_speeds
  # end
  #
  # def test_05_conditions_humidity
  #   current_conditions = Conditions.new(27612)
  #   assert current_conditions.humidity
  # end
  #
  # def test_06_conditions_feels_like
  #   current_conditions = Conditions.new(27604)
  #   assert current_conditions.feels_like
  # end
  #
  # def test_07_10_day_forecast_class_exist
  #   assert Forecast10.new(27615)
  # end
  #
  def test_08_10_week_forecast
    this_week = Forecast10.new(27611)
    this_week.forecast
  end

  # def test_09_10_daytime_forecast
  #   next_week = Forecast10.new(89103)
  #   assert next_week.daytime_forcast
  # end

  # def test_10_10_nighttime_forecast
  #   all_week = Forecast10.new(30306)
  #   assert all_week.nighttime_forcast
  # end
  #
  # def test_11_sun_times_class_exist
  #   assert Suntimes.new(37112)
  # end
  #
  # def test_12_both_sun_times
  #   assert Suntimes.new(30301)
  # end
  #
  # def test_13_only_one_sun_time
  #   assert Suntimes.new(78092)
  # end
  #
  # def test_14_alerts_class_exist
  #   assert Alerts.new(27607)
  # end
  #
  # def test_15_type_of_alerts
  #   assert Alerts.new(30306)
  # end
  #
  # def test_16_alerts_description
  #   assert Alerts.new(89101)
  # end
  #
  # def test_17_alerts_date
  #   assert Alerts.new(27607)
  # end
  #
  # def test_18_alerts_expires
  #   assert Alerts.new(27615)
  # end
  #
  # def test_19_hurricanes_class_exist
  #   assert Hurricanes.new
  # end
  #
  # def test_20_hurricane_location
  # end
  #
  # def test_21_hurricane_class
  # end

end
