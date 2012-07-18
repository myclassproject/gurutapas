class AddPasswordDigestToBookworms < ActiveRecord::Migration
  def change
    add_column :bookworms, :password_digest, :string
  end
end
