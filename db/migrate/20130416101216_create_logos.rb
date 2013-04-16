class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.attachment :logofile
      
      t.timestamps
    end
  end
end
