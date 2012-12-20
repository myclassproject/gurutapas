class AddCoverpicToBooks < ActiveRecord::Migration
  def change
    add_column :books, :coverpic, :string
  end
end
