class AddProfilepicToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :profilepic, :string
  end
end
