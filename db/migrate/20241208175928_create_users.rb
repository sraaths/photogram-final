class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :comments_count
      t.string :encrypted_password
      t.string :likes_count
      t.boolean :private
      t.string :remember_created_at
      t.string :reset_password_sent_at
      t.string :reset_password_token
      t.string :username

      t.timestamps
    end
  end
end
