#Weather Report
###Description
This program helps the user find the following local weather information:
- Current Conditions such as temperature, wind speeds, humidity, etc.
- 10 day forecast.
- Alerts
- Sunrise and sunset

It also provides information on worldwide hurricanes like category, wind speeds, and location.

###How It Works
The program uses the API of wunderground.com to retrieve the information needed. Each feature's information is found within the page by using a method. Since the API is in json format, json gem is required.

###How Do You Use It
The user will be prompt by asking for a zipcode. Once the zipcode is provided, the program will proceed asking y/n questions about what information would the user like. If user types "y", the program will respond by providing that information. If user types "n", the program will respond by going to the next question.
