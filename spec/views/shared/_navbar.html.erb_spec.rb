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
end
