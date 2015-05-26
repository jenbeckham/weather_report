require './requires.rb'

puts "Would you like to know your current weather conditions?(y/n)"
  user_input = gets.chomp
  if user_input == "y"
    puts "What is your zipcode?"
    zipcode = gets.chomp
    Conditions.new(zipcode) = conditions
    p conditions.temp_f
    p conditions.weather
    p conditions.wind_speeds
    p conditions.humidity
    p conditions.feels_like
  end

puts "What about your local 10 day forecast(y/n)"
  user_input_2 = gets.chomp
  if user_input_2 == "y"
    Forecast10.new(zipcode).forecast
  end

puts "What about your local weather alerts?(y/n)"
  user_input_3 = gets.chomp
  if user_input_3 == "y"
    Alerts.new(zipcode).info
  end

puts "What about your local sunrise and sunset?(y/n/)"
  user_input_4 = gets.chomp
  if user_input_4 == "y"
    Suntimes.new(zipcode).times
  end

puts "What about current hurricanes around the world?(y/n)"
  user_input_5 = gets.chomp
  if user_input_5 == "y"
    Hurricanes.new.hurricane_info
  else
    puts "See you tomorrow!"
  end
