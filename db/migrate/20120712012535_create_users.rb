class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :apelido
      t.date :data_nasc
      t.string :email
      t.string :senha
      t.integer :status

      t.timestamps
    end
  end
end
