require 'rails_helper'

RSpec.describe "Authentications", type: :request do
  describe "POST /login" do
    let(:user) { FactoryBot.create(:user, username: 'user1', password: 'password') }
    it 'authenticate the user' do
      post '/api/v1/login', params: { username: user.username, password: 'password' }
      expect(response).to have_http_status(:created)
      expect(json).to eq({ 
        'id' => user.id,
        'username' => user.username,
        'token' => AuthenticationTokenService.call(user.id)
       })
    end

    it 'returns error when username does not exist' do
      post '/api/v1/login', params: { username: 'ab', password: 'password' }
      expect(response).to have_http_status(:unauthorized)
      expect(json).to eq({ 
        'error' => 'No such user'
       })
    end

    it 'returns error when password is incorrect' do
      post '/api/v1/login', params: { username: user.username, password: 'passwo' }
      expect(response).to have_http_status(:unauthorized)
      expect(json).to eq({
        'error' => 'Incorrect password'
      })
    end
  end
end
