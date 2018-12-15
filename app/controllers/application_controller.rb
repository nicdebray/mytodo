class ApplicationController < ActionController::Base
before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
# For additional fields in app/view/devise/registrations/new.html.erb
devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
# For additional fields in app/view/devise/registrations/edit.html.erb
devise_parameter_sanitizer.permit(:account_update, keys: [:username])
end

require 'json'
require 'open-uri'

def weather_api
  # data set from opendataBX
  url = "https://opendata.bruxelles.be/api/records/1.0/search/?dataset=population-europeenne-feminine-a-bruxelles&rows=50&facet=land&facet=2009&facet=2010&facet=2011&facet=2012&facet=2013&facet=2014"
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)

  # keep only main info
  records = user["records"]
end
end
