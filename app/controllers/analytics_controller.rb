class AnalyticsController < ApplicationController
  def index
    @shorten_urls = ShortenUrl.includes(:analytics)
  end
end
