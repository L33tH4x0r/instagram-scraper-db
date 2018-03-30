class CreateLikers < ActiveRecord::Migration[5.1]
  def change
    create_table :likers do |t|
      t.string :name

      t.timestamps
    end
  end
end
