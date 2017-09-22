class StudentsController < ApplicationController

  def index
    @students = Student.all.where.not(admin: true)
    @pairs = Pair.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.admin == false
      @student.admin = true
      @student.save
      redirect_to admin_path, notice:"Student is admin!"
    else @student.admin == true
      @student.admin = false
      @student.save
      redirect_to admin_path, notice:"Admin is student!"
    end

  end


  private

  def student_params
  params.require(:student).permit(:email, :username, :admin)
  end

end
