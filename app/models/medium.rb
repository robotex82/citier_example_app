class Medium < ActiveRecord::Base
  acts_as_citier
  attr_accessible :name, :price, :type

  validates :price, :presence => true
end
