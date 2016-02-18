class AddAttachmentSourceImageToGifts < ActiveRecord::Migration
  def self.up
    change_table :gifts do |t|
      t.attachment :source_image
    end
  end

  def self.down
    remove_attachment :gifts, :source_image
  end
end
