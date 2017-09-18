class AdminsController < ApplicationController
  # before_action :authenticate_admin!
  before_action :verify_is_admin

  def index
    
  end

  def show
    @students = Student.all
  end

  private

  def verify_is_admin
    (current_student.nil?) ? redirect_to(students_path) : (redirect_to(students_path) unless current_student.admin?)
  end

end
