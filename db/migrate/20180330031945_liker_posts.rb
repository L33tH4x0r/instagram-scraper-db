class LikerPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :liker_posts, id: false do |t|
      t.belongs_to :follower, index: true
      t.belongs_to :post, index: true
    end
  end
end
