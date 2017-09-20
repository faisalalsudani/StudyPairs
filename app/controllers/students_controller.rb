class StudentsController < ApplicationController

  def index
    @students = Student.all.where.not(admin: true)
  end

  def show
    @student = Student.find(params[:id, :username])
  end

  def update
    @student = Student.find(params[:id])
    if @student.admin == false
       @student.admin == true
       @student.save
       redirect_to admin_path, notice:"Student is admin!"
    else
        @student.admin = true
        @student.save
        redirect_to admin_path, notice:"Admin is student!"
    end
  end


  private

  def student_params
  params.require(:student).permit(:email, :username)
  end

end
