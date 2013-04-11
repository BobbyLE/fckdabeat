class AddPublicToPosts < ActiveRecord::Migration
   def up
    change_table :posts do |p|
      p.boolean :public, :default => false
    end
    Post.update_all ["public = ?", true]
  end
 
  def down
    remove_column :posts, :public
  end
end
