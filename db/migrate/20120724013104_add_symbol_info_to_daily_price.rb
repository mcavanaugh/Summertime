class AddSymbolInfoToDailyPrice < ActiveRecord::Migration
   def change
    add_column :daily_prices, :symbol_info_id, :integer
    add_index :daily_prices, :symbol_info_id
  end
end
