Rails.application.routes.draw do
  namespace :v1 do
    get '/weather', to: 'weather#weather'
  end
end
