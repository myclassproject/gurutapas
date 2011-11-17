class CreateBookpdfs < ActiveRecord::Migration
  def change
    create_table :bookpdfs do |t|
      t.string :filename
      t.string :filetype
      t.binary :filedata

      t.timestamps
    end
  end
end
