class CreateSymbolInfos < ActiveRecord::Migration
  def change
    create_table :symbol_infos do |t|
      t.string :symbol
      t.string :company_name
      t.string :exchange

      t.timestamps
    end
  end
end
