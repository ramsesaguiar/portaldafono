class CreateContato < ActiveRecord::Migration
  def change
    create_table :contato do |t|
      t.string :nome
      t.string :email
      t.string :texto
      t.datetime :created
      t.integer :status

      t.timestamps
    end
  end
end
