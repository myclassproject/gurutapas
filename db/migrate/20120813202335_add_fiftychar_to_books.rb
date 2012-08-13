class AddFiftycharToBooks < ActiveRecord::Migration
  def change
    add_column :books, :fiftychar, :string
  end
end
