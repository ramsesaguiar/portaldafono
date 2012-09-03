class CreateAdminNewsletters < ActiveRecord::Migration
  def change
    create_table :admin_newsletters do |t|

      t.timestamps
    end
  end
end
