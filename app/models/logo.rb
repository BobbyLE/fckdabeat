class Logo < ActiveRecord::Base
  attr_accessible :logofile
  validates_attachment_presence :logofile
  
  has_attached_file :logofile, :styles => {:logo => '320x320#'}
  
end
