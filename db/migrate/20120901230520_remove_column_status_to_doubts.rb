class RemoveColumnStatusToDoubts < ActiveRecord::Migration
  def up
    	remove_column :doubts, :status
      end
  	def down
    	add_column :doubts, :status ,"ENUM('S', 'N')"
  	end
end
