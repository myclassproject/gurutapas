class AddAuthorreviewsToBookworms < ActiveRecord::Migration
  def change
    add_column :bookworms, :authorreview, :string
    add_column :bookworms, :authorreview2, :string
    add_column :bookworms, :authorreview3, :string
  end
end
