require 'rails_helper'

describe "Admin can see overview of all pairs and auto generate pairs" do

  before { login_as student }

  let(:student) { create :student , admin: true }


  it "shows the student details" do
    visit admins_url(student)

    expect(page).to have_text("Choose the desired date")
    expect(page).to have_text("All pairs")

 end



end
