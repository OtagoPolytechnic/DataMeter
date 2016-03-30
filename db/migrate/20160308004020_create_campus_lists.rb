class CreateCampusLists < ActiveRecord::Migration
	
 def up
      create_table :campuslist do |t|
      t.string "Hostname", :limit => 40
      t.string "Username", :limit => 25
       t.string "RemotePath", :limit => 50
       t.string "LocalPath", :limit => 50
      t.string "Password", :limit => 25
      t.string "DeviceLocation", :limit => 25
      t.timestamps null: false
    end
  end

  def down
  	drop_table :campuslist
  end
end

