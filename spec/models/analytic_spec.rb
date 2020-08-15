require 'rails_helper'

RSpec.describe Analytic, type: :model do
  it { should belong_to(:shorten_url) }
end
