require 'rails_helper'

RSpec.describe 'Analytics', type: :request do
  describe 'GET /clubs' do
    it 'will check the response of shorten urls index method' do
      get '/analytics'
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end
end
