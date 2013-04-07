class AddTagToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category, :string
    Post.reset_column_information
    Post.all.each do |post|  
      post.update_attributes! :category => 'POP'
    end
  end
end
