class AddBlogToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :blogurl, :string
  end
end
