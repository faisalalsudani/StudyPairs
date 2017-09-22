require 'rails_helper'

describe "Navigating Student Pairs" do
  before { login_as student }

  let!(:student) { create :student}


  it "allows navigation to the Student path" do
    visit student_url(student)

    click_link "StudyPairs"

    expect(current_path).to eq(students_path)
  end
end
