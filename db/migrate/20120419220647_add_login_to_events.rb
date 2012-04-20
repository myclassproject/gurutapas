class AddLoginToEvents < ActiveRecord::Migration
  def change
    add_column :events, :personname, :string
    add_column :events, :email, :string
  end
end
