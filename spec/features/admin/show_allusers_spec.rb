require 'rails_helper'

describe "Admin can promote and demote the students as admin" do

  before { login_as student }

  let(:student) { create :student , admin: true }
  let(:student1) { create :student , admin: false }

  it "shows the student details" do
    visit admin_url(student)
    expect(page).to have_text("List of all student")
  end

  
end
