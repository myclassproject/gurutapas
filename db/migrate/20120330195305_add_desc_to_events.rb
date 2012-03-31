class AddDescToEvents < ActiveRecord::Migration
  def change
    add_column :events, :desc, :text
    add_column :events, :address, :string
    add_column :events, :rsvp, :string
  end
end
