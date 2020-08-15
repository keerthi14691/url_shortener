require 'rails_helper'

RSpec.describe 'ShortenUrls', type: :request do
  describe 'GET /clubs' do
    it 'will check the response of shorten urls index method' do
      ShortenUrl.create(original_url: 'test/hifive/test')
      get '/shorten_urls'
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end
end
