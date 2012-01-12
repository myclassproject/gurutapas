class AddTitleToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :title, :string
  end
end
