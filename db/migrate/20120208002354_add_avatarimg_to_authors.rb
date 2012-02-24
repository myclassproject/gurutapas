class AddAvatarimgToAuthors < ActiveRecord::Migration
#  def change
#    add_column :authors, :avatarimg, :avatar
#  end

  def self.up
    change_table :authors do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :authors, :avatar
  end

end
