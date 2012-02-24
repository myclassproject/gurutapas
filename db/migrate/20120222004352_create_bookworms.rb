class CreateBookworms < ActiveRecord::Migration
  def change
    create_table :bookworms do |t|
      t.string :name
      t.string :email
      t.string :picurl
      t.string :fanbook
      t.string :review
      t.string :fanbook2
      t.string :review2
      t.string :fanbook3
      t.string :review3
      t.string :fanauthor
      t.string :fanauthor2
      t.string :fanauthor3
      t.string :genre
      t.string :genre2
      t.string :genre3
      t.string :todo
      t.string :todo2
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
