class RemoveColumnStatusDiscussions < ActiveRecord::Migration
  def up
    remove_column :discussions, :status
      end

  def down
    add_column :discussions, :status ,"ENUM('S', 'N')"
  end
end
