class Avaliacao < ActiveRecord::Base
  has_one :prova
  belongs_to :disciplina
  belongs_to :matricula
end
