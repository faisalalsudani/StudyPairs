class PairsController < ApplicationController

  def new
    @pair = Pair.new
  end

  def create
    @pair = Pair.create(pair_params)
    if @pair.save
      redirect_to admins_path, notice: "Pairs created"
    end
  end

  def show
      @pair = Pair.find(params[:id])
  end


  private

  def pair_params
     params.require(:pair).permit(:day,:pairs)
  end



end
