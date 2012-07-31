class AddIndexToCurrentSymbols < ActiveRecord::Migration
  def change
    add_index :current_symbols, :symbol
  end
end
