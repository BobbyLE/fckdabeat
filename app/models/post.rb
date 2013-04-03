class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  validates :user_id, presence: true
  validates :title, presence: true
end
