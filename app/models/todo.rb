require 'json'
require 'open-uri'

class Todo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true



def weather_api
  # data set from opendataBX
  url = "https://opendata.bruxelles.be/api/records/1.0/search/?dataset=population-europeenne-feminine-a-bruxelles&rows=50&facet=land&facet=2009&facet=2010&facet=2011&facet=2012&facet=2013&facet=2014"
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)

  # keep only main info
  records = user["records"]
end
end
