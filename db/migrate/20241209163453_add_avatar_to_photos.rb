class AddAvatarToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :avatar, :string
  end
end
