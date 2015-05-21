require 'minitest/autorun'
require 'minitest/pride'
require './requires.rb'

class WeatherTest < Minitest::Test

  def test_01_conditions_class_exist
    assert Conditions.new(27615)
  end

  def test_02_conditions_current_temp
    current_conditions = Conditions.new(27515)
    assert current_conditions.temp_f
  end

  def test_03_conditions_current_weather
    current_conditions = Conditions.new(27601)
    assert current_conditions.weather
  end

  def test_04_conditions_wind_speeds
    current_conditions = Conditions.new(27605)
    assert current_conditions.wind_speeds
  end

  def test_05_conditions_humidity
    current_conditions = Conditions.new(27612)
    assert current_conditions.humidity
  end

  def test_06_conditions_feels_like
    current_conditions = Conditions.new(27604)
    assert current_conditions.feels_like
  end

  def test_01_alerts_class_exist
    assert Alerts.new(27607)
  end

  def test_02_hurricanes_class_exist
    assert Hurricanes.new
  end

  def test_04_forecast_class_exist
    assert Forecast10.new(27615)
  end

  def test__alerts_type
  end

  def test__alerts_description
  end

  def test__alerts_date
  end

  def test__alerts_expires
  end


end
