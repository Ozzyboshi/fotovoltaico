class RenameMyTable < ActiveRecord::Migration
   def self.up
    rename_table :lettures, :letture
   end

   def self.down
    rename_table :lettures, :letture
   end
end
