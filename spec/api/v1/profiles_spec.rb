# frozen_string_literal: true

require 'rails_helper'

describe 'Profile API' do
  let(:api_url) { '/api/v1/profile' }

  describe 'GET #index' do
    let(:params) { { format: :json, access_token: '1234' } }
    before { get api_url, params: params }

    context 'not auth' do
      it 'return 401 status if token is invalid' do
        expect(response.status).to eq 401
      end
    end
  end

  context 'for auth user' do
    let(:user) { create(:user) }
    let(:access_token) { create(:access_token, resource_owner_id: user.id) }
    let(:params) { { format: :json, access_token: access_token.token } }

    before { get api_url, params: params }

    it 'return 200 status' do
      expect(response).to be_successful
    end


  end

end