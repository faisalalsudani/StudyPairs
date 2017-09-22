require 'rails_helper'

describe "Student view pairs for today and previous days" do
  let(:student) { create :student }

  it "shows the room's details" do
    visit student_url(student)

    expect(page).to have_text(student.username)

  end
end
