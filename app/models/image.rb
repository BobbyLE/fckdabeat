class Image < ActiveRecord::Base
  attr_accessible :imagefile
  validates_attachment_presence :imagefile
  
  has_attached_file :imagefile, :styles => {:thumb => '320x320#', :small => '160x160#'}
end
