class Novel < Book
  acts_as_citier
  attr_accessible :summary
end
