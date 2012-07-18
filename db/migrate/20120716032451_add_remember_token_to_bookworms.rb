class AddRememberTokenToBookworms < ActiveRecord::Migration
  def change
    add_column :bookworms, :remember_token, :string
    add_index  :bookworms, :remember_token
  end
end
