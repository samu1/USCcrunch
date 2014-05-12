class InsFirst < ActiveRecord::Base
  attr_accessible :sname, :sno, :sm1, :sm2, :sm3, :sm4, :sm5
  belongs_to :ins_second
  belongs_to :user
end
