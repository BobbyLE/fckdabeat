class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |u|
      u.attachment :imagefile

      u.timestamps
    end
  end
end
