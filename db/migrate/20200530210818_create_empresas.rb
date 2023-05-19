class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
