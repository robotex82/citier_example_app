class Audio < Medium
  acts_as_citier
  attr_accessible :genre, :title

  validates :title, :presence => true
end
