class AddSymbolInfoToCurrentSymbols < ActiveRecord::Migration
  def change
    add_column :current_symbols, :symbol_info_id, :integer
    add_index :current_symbols, :symbol_info_id
  end
end
