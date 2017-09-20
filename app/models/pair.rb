class Pair < ApplicationRecord

  def self.set_date
    @day = DateTime.now.to_date
  end

  def index
    @pairs = Pair.all
  end


  def new
    @day = Day.new
  end

end
