require './requires.rb'

puts "What is your zipcode?"
zipcode = gets.chomp

puts "Would you like to know your current weather conditions?(y/n)"
  user_input = gets.chomp
  if user_input == "y"
    puts Conditions.new(zipcode).current_info
  end

puts "What about your local 10 day forecast(y/n)"
  user_input_2 = gets.chomp
  if user_input_2 == "y"
    puts Forecast10.new(zipcode).forecast
  end

puts "What about your local weather alerts?(y/n)"
  user_input_3 = gets.chomp
  if user_input_3 == "y"
    puts Alerts.new(zipcode).alert_info
  end

puts "What about your local sunrise and sunset?(y/n/)"
  user_input_4 = gets.chomp
  if user_input_4 == "y"
    puts Suntimes.new(zipcode).suntime
  end

puts "What about current hurricanes around the world?(y/n)"
  user_input_5 = gets.chomp
  if user_input_5 == "y"
    puts Hurricanes.new.hurricane_info
  else
    puts "See you tomorrow!"
  end
