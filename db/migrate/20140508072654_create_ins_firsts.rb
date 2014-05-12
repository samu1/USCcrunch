class CreateInsFirsts < ActiveRecord::Migration
  def change
    create_table :ins_firsts do |t|
       t.string  :sname
       t.integer :sno
       t.integer :sm1
       t.integer :sm2
       t.integer :sm3
       t.integer :sm4
       t.integer :sm5
      t.timestamps
    end
  end
end
