class CreateInstructorfirstClasses < ActiveRecord::Migration
  def change
    create_table :instructorfirst_classes do |t|
 t.string :name
      t.integer :no
      t.integer :m1
      t.integer :m2
      t.integer :m3
      t.integer :m4
      t.integer :m5
      t.timestamps
    end
  end
end
