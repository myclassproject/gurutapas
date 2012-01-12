class AddBkPurchaseUrlToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :bkpurchaseurl, :string
  end
end
