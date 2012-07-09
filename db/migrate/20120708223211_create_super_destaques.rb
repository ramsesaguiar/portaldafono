class CreateSuperDestaques < ActiveRecord::Migration
  def change
    create_table :super_destaques do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :slug
      t.integer :status
      t.date :data_ini
      t.date :data_fim
      t.integer :posicao

      t.timestamps
    end
  end
end
