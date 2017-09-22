class PairsController < ApplicationController
  before_action :verify_is_admin

  def new
    @pair = Pair.new
  end

  def create
    @pair = Pair.create(pair_params)
    @pair.matches = Pair.r_student
    if @pair.save
      redirect_to admins_path, notice: "Pairs created"
    end
  end

  def show
      @pair = Pair.find(params[:id])
      @pair = Pair.order(day: :acs)
  end

  def destroy_pair
    @pair = Pair.find(params[:id])
    @pair.destroy

    redirect_to admins_path
  end

  private

  def pair_params
     params.require(:pair).permit(:day,:pairs, :matches)
  end

  def verify_is_admin
    (current_student.nil?) ? redirect_to(students_path) : (redirect_to(students_path) unless current_student.admin?)
  end



end
