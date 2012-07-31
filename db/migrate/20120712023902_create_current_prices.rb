class CreateCurrentPrices < ActiveRecord::Migration
  def change
    create_table :current_prices do |t|
      t.decimal :price
      t.string :symbol

      t.timestamps
    end
  end
end
