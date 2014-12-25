class RenameMyTable2 < ActiveRecord::Migration
  def self.up
    rename_table :prezzis, :prezzi
   end

   def self.down
    rename_table :prezzi, :prezzis
   end
end
