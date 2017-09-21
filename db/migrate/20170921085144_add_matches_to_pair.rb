class AddMatchesToPair < ActiveRecord::Migration[5.1]
  def change
    add_column :pairs, :matches, :string, array: true, default: []
  end
end
