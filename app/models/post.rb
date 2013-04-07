class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category, :thumbnail
  belongs_to :user
  
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 30}
  validates :category, presence: true, length: {maximum: 30}
  validates :content, presence: true
  validates_attachment_presence :thumbnail
  
  #paperclip
  has_attached_file :thumbnail, :styles => {:thumb => '320x320#'}
  
  default_scope order: 'posts.created_at DESC'
end
