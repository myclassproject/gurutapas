class AddRememberTokenToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :remember_token, :string
    add_index  :authors, :remember_token
  end
end
