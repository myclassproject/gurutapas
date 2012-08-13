class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :coverpicurl
      t.string :title
      t.text :blurb
      t.date :releasedate
      t.integer :author_id
      t.string :genre

      t.timestamps
    end
    add_index :books, [:author_id, :releasedate]
  end
end
