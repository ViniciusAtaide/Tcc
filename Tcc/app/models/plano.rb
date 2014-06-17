class Plano < ActiveRecord::Base
  belongs_to :professor
  belongs_to :turma
  has_one :disciplina
end
