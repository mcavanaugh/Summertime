class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :symbol
      t.datetime :active_date
      t.decimal :top
      t.decimal :base
      t.string :level1
      t.string :level2
      t.string :level3

      t.timestamps
    end
  end
end
