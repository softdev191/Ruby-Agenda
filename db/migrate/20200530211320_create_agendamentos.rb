class CreateAgendamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :agendamentos do |t|
      t.references :empresa, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true
      t.datetime :agendamento

      t.timestamps
    end
  end
end
