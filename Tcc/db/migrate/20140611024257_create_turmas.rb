class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :turno
      t.string :sub
      t.integer :serie

      t.timestamps
    end
  end
end
