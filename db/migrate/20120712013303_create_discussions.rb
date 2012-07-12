class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :autor_id
      t.string :titulo
      t.string :subtitulo
      t.text :texto
      t.date :data_inicio
      t.date :data_fim
      t.integer :status

      t.timestamps
    end
  end
end
