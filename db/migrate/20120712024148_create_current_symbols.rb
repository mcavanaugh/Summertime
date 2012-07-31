class CreateCurrentSymbols < ActiveRecord::Migration
  def change
    create_table :current_symbols do |t|
      t.datetime :active_date
      t.string :symbol

      t.timestamps
    end
  end
end
