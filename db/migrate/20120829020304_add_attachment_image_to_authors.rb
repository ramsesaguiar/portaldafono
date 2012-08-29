class AddAttachmentImageToAuthors < ActiveRecord::Migration
  def self.up
    change_table :authors do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :authors, :image
  end
end
