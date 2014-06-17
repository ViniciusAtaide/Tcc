class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.integer :nota
      t.integer :periodo
      t.integer :ano
      t.references :prova, index: true
      t.references :disciplina, index: true
      t.references :matricula, index: true

      t.timestamps
    end
  end
end
