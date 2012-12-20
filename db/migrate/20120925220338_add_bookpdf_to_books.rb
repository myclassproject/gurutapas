class AddBookpdfToBooks < ActiveRecord::Migration
  def change
    add_column :books, :bookpdf, :string
  end
end
