class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :Ustreamid
      t.string :Ustreamchat
      t.string :twitter

      t.timestamps
    end
  end
end
