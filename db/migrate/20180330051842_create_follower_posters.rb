class CreateFollowerPosters < ActiveRecord::Migration[5.1]
  def change
    create_table :follower_posters do |t|
      t.belongs_to :follower, index: true
      t.belongs_to :poster, index: true
    end
  end
end
