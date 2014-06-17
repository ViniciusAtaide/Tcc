class CreatePlanos < ActiveRecord::Migration
  def change
    create_table :planos do |t|
      t.text :descricao
      t.references :professor
      t.references :disciplina
      t.references :turma

      t.timestamps
    end
  end
end
