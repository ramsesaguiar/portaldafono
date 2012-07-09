class CreateAutores < ActiveRecord::Migration
  def change
    create_table :autores do |t|
      t.string :nome
      t.string :apelido
      t.integer :crfa
      t.string :bibiografia
      t.datetime :created

      t.timestamps
    end
  end
end
