class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.text :markdown
      t.text :html
      t.string :status
      t.timestamps
    end
  end
end
