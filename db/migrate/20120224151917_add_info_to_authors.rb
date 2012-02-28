class AddInfoToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :genre, :string
    add_column :authors, :genre2, :string
    add_column :authors, :genre3, :string
    add_column :authors, :bookpicurl, :string
    add_column :authors, :bookpicurl2, :string
    add_column :authors, :bookpicurl3, :string
    add_column :authors, :authorbook, :string
    add_column :authors, :authorbook2, :string
    add_column :authors, :authorbook3, :string
    add_column :authors, :towrite, :string
    add_column :authors, :towrite2, :string
    add_column :authors, :soonbkpicurl, :string
    add_column :authors, :soonbkpicurl2, :string
    add_column :authors, :bookblurb, :string
    add_column :authors, :bookblurb2, :string
    add_column :authors, :bookblurb3, :string
    add_column :authors, :soonbookblurb, :string
    add_column :authors, :soonbookblurb2, :string
  end
end
