class AddAttachmentThumbnailToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    drop_attached_file :posts, :thumbnail

  end
end
