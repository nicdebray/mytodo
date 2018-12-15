require 'json'
require 'open-uri'

class Todo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

def weather
  weather_key = ENV['openweathermap_api_key']
  url = "https://api.openweathermap.org/data/2.5/weather?q=brussels&APPID=#{weather_key}"
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)

  records = user["main"]["temp"]
end

end
