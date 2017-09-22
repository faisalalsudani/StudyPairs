require 'rails_helper'

RSpec.describe Pair, type: :model do
  describe "validations" do

  let(:pair1) { FactoryGirl.create(:pair, day: Time.zone.today) }
  let!(:pair2) { FactoryGirl.build(:pair, day: Time.zone.today) }
    it "is invalid without a day" do


      expect(pair2).not_to be_valid
    end
  end
end
