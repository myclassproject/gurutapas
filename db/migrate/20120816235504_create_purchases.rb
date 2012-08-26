class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps
    end
  end
end
