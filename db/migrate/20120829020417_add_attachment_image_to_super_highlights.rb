class AddAttachmentImageToSuperHighlights < ActiveRecord::Migration
  def self.up
    change_table :super_highlights do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :super_highlights, :image
  end
end
