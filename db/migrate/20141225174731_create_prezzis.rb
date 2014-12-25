class CreatePrezzis < ActiveRecord::Migration
  def change
    create_table :prezzis do |t|
      t.date :datainiziovalidita
      t.date :datafinevalidita
      t.float :prezzofascia1
      t.float :prezzofascia2
      t.float :prezzofascia3

      t.timestamps
    end
  end
end
