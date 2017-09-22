require 'rails_helper'

RSpec.describe Pair, type: :model do
  describe "validations" do

    it "is invalid for the same day" do
        is_expected.to validate_uniqueness_of(:day)
    end
  end
end
