class AddIndexToCurrentPrices < ActiveRecord::Migration
  def change
    add_index :current_prices, :symbol
  end
end
