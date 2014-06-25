class Avaliacao < ActiveRecord::Base
  belongs_to :prova
  belongs_to :disciplina
  belongs_to :matricula


end
