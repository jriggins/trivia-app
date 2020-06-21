require 'rails_helper'

RSpec.describe Registration::UsersController, type: :request do
  describe 'POST /registration/users' do
    context 'with valid input params' do
      it 'creates a User' do
        headers = { 'CONTENT_TYPE': 'application/json' }
        params = {}

        post(registration_users_path, params: params, headers: headers)

        expect(response.status).to eq(200)
      end
    end

    context 'with invalid input params' do
      it 'returns a 400' do
      end
    end
  end
end
