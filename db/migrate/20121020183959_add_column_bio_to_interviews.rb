class AddColumnBioToInterviews < ActiveRecord::Migration
  def self.up
		add_column :interviews, :bio, :text
 	end
 	def self.down
 		remove_column :interviews, :bio
	end
end
