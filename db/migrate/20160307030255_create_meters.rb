class CreateMeters < ActiveRecord::Migration
  def up
    create_table :meters do |t|
      t.string "Date", :limit => 25
      t.string "DeviceName", :limit => 25
      t.decimal "Surge1", :limit => 25
      t.decimal "Surge2", :limit => 25
      t.decimal "Surge3", :limit => 25
      t.decimal "Total", :limit => 25
      t.timestamps null: false
    end
  end

  def down
  	drop_table :meters
  end
end
