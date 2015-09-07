class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
