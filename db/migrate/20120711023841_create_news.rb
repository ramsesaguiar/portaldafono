class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :titulo
      t.string :subtitulo
      t.integer :autor_id
      t.string :texto
      t.integer :status
      t.date :data

      t.timestamps
    end
  end
end
