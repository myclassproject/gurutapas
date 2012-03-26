class CreateBookevents < ActiveRecord::Migration
  def change
    create_table :bookevents do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
