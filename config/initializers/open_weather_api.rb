OpenWeatherAPI.configure do |config|
  config.api_key = Rails.application.credentials.open_weather_api_key

  config.default_language = 'es'
end
