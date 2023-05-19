class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.references :perfil, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
