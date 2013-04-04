class CreateAboutus < ActiveRecord::Migration
  def change
    create_table :aboutus do |t|
      t.string :content

      t.timestamps
    end
  end
end
