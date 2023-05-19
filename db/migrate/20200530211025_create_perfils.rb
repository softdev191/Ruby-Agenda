class CreatePerfils < ActiveRecord::Migration[6.0]
  def change
    create_table :perfils do |t|
      t.string :nome

      t.timestamps
    end
  end
end
