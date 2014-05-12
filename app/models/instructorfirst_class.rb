class InstructorfirstClass < ActiveRecord::Base
attr_accessible :name, :no, :m1, :m2, :m3, :m4, :m5
  validates :name, :no, :m1, :m2, :m3, :m4, :m5, :presence => true
  belongs_to :ins_second
  belongs_to :user
  belongs_to :school_admin
end
