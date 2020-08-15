class ShortenUrlsController < ApplicationController
  def index
    @shorten_url = ShortenUrl.new
    @existing_urls = ShortenUrl.all
  end

  def create
    @shorten_url = ShortenUrl.new(shorten_url_params)
    if @shorten_url.save
      @error = false
    else
      @error = true
      @message = @shorten_url.errors.full_messages.join(',')
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def set_analytics
    @shorten_url = ShortenUrl.find(params[:id])
    @shorten_url.analytics.create!(ip_address: request.ip, country: request.location.country)
    @href = params[:href]
    respond_to do |format|
      format.js
    end
  end

  private

  def shorten_url_params
    params.require(:shorten_url).permit(:original_url)
  end
end
