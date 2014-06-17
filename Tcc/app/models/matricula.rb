class Matricula < ActiveRecord::Base
  belongs_to :turma
  belongs_to :aluno
  has_many :avaliacaos
end
