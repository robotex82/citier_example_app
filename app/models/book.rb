class Book < Medium
  acts_as_citier :table_name => 'tablebooks'
  attr_accessible :author, :title

  validates :author, :presence => true
  validates :title, :presence => true
end
