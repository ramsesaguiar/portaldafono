class RemoveColumnStatusSuperHighlights < ActiveRecord::Migration
  def up
    	remove_column :super_highlights, :status
      end
  	def down
    	add_column :super_highlights, :status ,"ENUM('S', 'N')"
  	end
end
