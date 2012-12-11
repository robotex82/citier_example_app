class Audio < Medium
  acts_as_citier
  attr_accessible :genre, :title
end
