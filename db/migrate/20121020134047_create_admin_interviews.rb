class CreateAdminInterviews < ActiveRecord::Migration
  def change
    create_table :admin_interviews do |t|

      t.timestamps
    end
  end
end
