class CreateAddLastnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tid, :integer
    add_column :users, :tname, :string
    add_column :users, :teacher_class, :string
    add_column :users, :subject,:string
    add_column :users, :contact, :string
    
    
  end
end
