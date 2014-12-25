class CreateLettures < ActiveRecord::Migration
  def change
    create_table :lettures do |t|
      t.date :data
      t.integer :consumofascia1
      t.integer :consumofascia2
      t.integer :consumofascia3
      t.integer :consumofascia1periodoprecedente
      t.integer :consumofascia2periodoprecedente
      t.integer :consumofascia3periodoprecedente
      t.integer :produzionefascia1
      t.integer :produzionefascia2
      t.integer :produzionefascia3
      t.integer :immissionefascia1
      t.integer :immissionefascia2
      t.integer :immissionefascia3

      t.timestamps
    end
  end
end
