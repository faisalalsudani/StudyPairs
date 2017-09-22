require 'rails_helper'

describe "shared/_navbar.html.erb" do
before { sign_in student }

  context "Student login" do
   let(:student) { create :student }
    it "renders email" do
      render
      expect(rendered).to have_content student.email
    end
  end

  context "Admin login" do

    let(:student) { create :student, admin: true }

    it "renders email" do
      render
      expect(rendered).to have_content student.email
      expect(rendered).to have_text "All users"

    end
  end


  
end
