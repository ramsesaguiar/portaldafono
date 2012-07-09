class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.string :subtitulo
      t.integer :autor_id
      t.string :texto
      t.integer :status
      t.date :data
      t.datetime :created

      t.timestamps
    end
  end
end
