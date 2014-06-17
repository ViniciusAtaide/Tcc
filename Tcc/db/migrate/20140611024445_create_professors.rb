class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :matricula

      t.timestamps
    end
    add_index :professores, :matricula
  end
end
