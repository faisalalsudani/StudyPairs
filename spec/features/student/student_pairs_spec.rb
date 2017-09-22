require 'rails_helper'

describe "Student view pairs for today and previous days" do
  before { login_as student }

  let(:student) { create :student }

  it "shows the student details" do
    visit students_url(student)

    expect(page).to have_text(student.username)
    expect(page).to have_text("Your match for today")
    expect(page).to have_text("Your match for previous days")

  end


end
