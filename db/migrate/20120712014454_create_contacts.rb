class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.text :texto
      t.integer :status

      t.timestamps
    end
  end
end
