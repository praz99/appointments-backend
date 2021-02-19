require 'rails_helper'

RSpec.describe 'Houses API', type: :request do
  # initialize test data
  let!(:houses) { create_list(:house, 10) }
  let(:house_id) { houses.first.id }

  describe 'GET /houses' do
    before { get '/houses' }

    it 'returns houses' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /houses/:house_id' do
    before { get "/houses/#{house_id}" }

    context 'when the record exists' do
      it 'returns the house' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(house_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record doesnot exist' do
      let(:house_id) { 100 }

      it 'returns a status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find House/)
      end
    end
  end
end
