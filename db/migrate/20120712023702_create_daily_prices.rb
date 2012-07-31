class CreateDailyPrices < ActiveRecord::Migration
  def change
    create_table :daily_prices do |t|
      t.decimal :opening
      t.decimal :high
      t.decimal :low
      t.integer :volume
      t.decimal :closing
      t.string :symbol

      t.timestamps
    end
  end
end
