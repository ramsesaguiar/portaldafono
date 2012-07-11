class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nome
      t.string :apelido
      t.integer :crfa
      t.string :bibiografia

      t.timestamps
    end
  end
end
