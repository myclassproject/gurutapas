class AddBookpurchaseurlToBooks < ActiveRecord::Migration
  def change
    add_column :books, :bookpurchaseurl, :string
  end
end
