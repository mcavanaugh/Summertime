class AddIndexToSymbolInfo < ActiveRecord::Migration
  def change
    add_index :symbol_infos, :symbol
  end
end
