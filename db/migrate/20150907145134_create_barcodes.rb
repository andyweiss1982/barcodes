class CreateBarcodes < ActiveRecord::Migration
  def change
    create_table :barcodes do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
