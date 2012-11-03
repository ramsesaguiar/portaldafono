class RemoveColumnAuthorIdInterviews < ActiveRecord::Migration
  def up
      remove_column :interviews, :author_id
      end
    def down
      add_column :interviews, :author_id, :integer
    end
end
