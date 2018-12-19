require 'json'
require 'open-uri'

class WeatherFetcher
  def weather_temp
    weather_key = ENV['openweathermap_api_key']
    url = "https://api.openweathermap.org/data/2.5/weather?q=brussels&APPID=#{weather_key}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)

    records = user["main"]["temp"] - 273.15
    temp = records.round(1)
  end

  def weather_location
    weather_key = ENV['openweathermap_api_key']
    url = "https://api.openweathermap.org/data/2.5/weather?q=brussels&APPID=#{weather_key}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)

    records = user["name"]
  end
end
