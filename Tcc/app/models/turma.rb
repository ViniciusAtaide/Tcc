class Turma < ActiveRecord::Base
  has_many :matriculas
  has_many :planos
end
