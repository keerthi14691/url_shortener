class ShortenUrl < ApplicationRecord
  before_create :strip_white_spaces, :set_short_url
  has_many :analytics

  validates :original_url, presence: true

  def strip_white_spaces
    original_url.strip!
  end

  def set_short_url
    url = [*('a'..'z'), *(0..9)].sample(5).join
    existing_url = ShortenUrl.where(short_url: url)
    if existing_url.present?
      set_short_url
    else
      self.short_url = url
    end
  end
end
