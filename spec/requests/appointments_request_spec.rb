require 'rails_helper'

RSpec.describe 'Appointments API', type: :request do
  let(:user) { create(:user) }
  let(:house) { create(:house) }
  let(:house_id) { house.id }
  let(:headers) { valid_headers }
  let(:date) { Faker::Date.forward(days: 10) }

  describe 'POST /houses/:house_id/appointments' do
    let(:valid_attributes) do
      { house_id: house_id, date: date }
    end

    context 'when the request is valid' do
      before { post "/houses/#{house_id}/appointments", params: valid_attributes.to_json, headers: headers }

      it 'creates an appointment' do
        expect(json['date'].split('T')[0]).to eq(date.to_json[1..10])
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { house_id: house_id, date: nil } }
      before { post "/houses/#{house_id}/appointments", params: invalid_attributes.to_json, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match("{\"date\":[\"can't be blank\"]}")
      end
    end
  end
end
