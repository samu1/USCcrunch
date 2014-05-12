class InsSecond < ActiveRecord::Base
attr_accessible :s1name, :s1no, :s1m1, :s1m2, :s1m3, :s1m4, :s1m5
 validates :s1name, :s1no, :s1m1, :s1m2, :s1m3, :s1m4, :s1m5, :presence => true
has_many :instructor
has_many :ins_first
end
