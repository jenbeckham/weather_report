require 'minitest/autorun'
require 'minitest/pride'
require './requires.rb'

class WeatherTest < Minitest::Test

  def test_01_conditions_class_exist
    assert Conditions.new
  end

  def test_02_hurricanes_class_exist
    assert Hurricanes.new
  end

  def test_03_forecast_class_exist
    assert Forecast.new
  end

  def test_alerts_class_exist
    assert Alerts.new
  end
end
