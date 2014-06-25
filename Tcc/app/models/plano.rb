class Plano < ActiveRecord::Base
  belongs_to :professor
  belongs_to :turma
  belongs_to :disciplina
end
