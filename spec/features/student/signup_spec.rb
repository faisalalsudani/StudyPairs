require 'rails_helper'

describe "Student should register before login" do

 let(:student) { create :student }

  it "shows the student details" do
    visit students_url(student)

    expect(page).to have_text("You need to sign in or sign up before continuing.")
end
end
