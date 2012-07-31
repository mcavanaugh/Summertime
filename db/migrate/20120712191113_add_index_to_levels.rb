class AddIndexToLevels < ActiveRecord::Migration
  def change
    add_index :levels, :symbol
  end
end
