class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.date :datacancelamento
      t.references :turma, index: true
      t.references :aluno, index: true

      t.timestamps
    end
  end
end