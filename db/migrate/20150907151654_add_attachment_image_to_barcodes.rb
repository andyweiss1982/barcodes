class AddAttachmentImageToBarcodes < ActiveRecord::Migration
  def self.up
    change_table :barcodes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :barcodes, :image
  end
end
