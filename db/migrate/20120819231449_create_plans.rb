class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :author_id
      t.float :price
      t.integer :term

      t.timestamps
    end
  end
end
