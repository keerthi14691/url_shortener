require 'rails_helper'

RSpec.describe ShortenUrl, type: :model do
  it { should have_many(:analytics) }
end
