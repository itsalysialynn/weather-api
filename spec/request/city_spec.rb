require 'rails_helper'

RSpec.describe 'v1 weather API', type: :request do
  describe 'GET /v1/weather?city=:city', :vcr do
    context 'when the weather record exists on open weather api' do
      before { get '/v1/weather?city=Vancouver' }
      it 'returns the weather data for the city' do
        expect(JSON.parse(response.body)).to have_key('weather')
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the weather record does not exists on open weather api' do
      before { get '/v1/weather?city=Vancouve' }

      it 'returns a not found error message' do
        expect(JSON.parse(response.body)).to eq('404 Not Found')
      end

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
