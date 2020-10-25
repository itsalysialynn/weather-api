class V1::WeatherController < ApplicationController
  # GET /weather?city=:city
  def weather
    render json: weather_for_city
  rescue RestClient::NotFound => e
    render json: e, status: :not_found
  end

  private

  def weather_for_city
    Rails.configuration.open_weather_api.current city: params[:city]
  end
end
