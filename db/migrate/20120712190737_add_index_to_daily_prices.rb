class AddIndexToDailyPrices < ActiveRecord::Migration
  def change
    add_index :daily_prices, :symbol
  end
end
