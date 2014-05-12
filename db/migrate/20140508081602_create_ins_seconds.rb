class CreateInsSeconds < ActiveRecord::Migration
  def change
    create_table :ins_seconds do |t|
 t.string  :s1name
       t.integer :s1no
       t.integer :s1m1
       t.integer :s1m2
       t.integer :s1m3
       t.integer :s1m4
       t.integer :s1m5
      t.timestamps
    end
  end
end
