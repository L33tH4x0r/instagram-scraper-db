class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :national_park_id
      t.integer :user_id
      t.integer :likes_count
      t.timestamps
    end
  end
end
