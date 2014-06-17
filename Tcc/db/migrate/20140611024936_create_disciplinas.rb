class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.integer :cod
      t.string :nome

      t.timestamps
    end
  end
end
