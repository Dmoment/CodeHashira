class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :users, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end

    add_index :posts, :title
  end
end
