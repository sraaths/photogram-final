class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :comments_count
      t.string :image
      t.string :likes_count
      t.integer :owner_id

      t.timestamps
    end
  end
end
