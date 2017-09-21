class PairsController < ApplicationController

  def new
    @pair = Pair.new
  end

  def create
    @pair = Pair.create(pair_params)
    @pair.matches = Pair.r_student
    if @pair.save
      redirect_to @pair, notice: "Pairs created"
    end
  end

  def show
      @pair = Pair.find(params[:id])
  end


  private

  def pair_params
     params.require(:pair).permit(:day,:pairs, :matches)
  end



end
