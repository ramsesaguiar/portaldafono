class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :apelido
      t.date :data_nasc
      t.string :email
      t.string :senha
      t.integer :status
      t.datetime :created
      t.datetime :modified

      t.timestamps
    end
  end
end
