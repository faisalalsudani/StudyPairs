class PairsController < ApplicationController

  def new
    @pair = Pair.new
  end

  def create
    @pair = Pair.new(pair_params)
    if @pair.save
      redirect_to @admin, notice: "Pairs created"
    else
      render :new
    end
  end


  private

  def pair_params
     params.require(:pair).permit(:day,:pairs)
  end



end
