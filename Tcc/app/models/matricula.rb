class Matricula < ActiveRecord::Base
  belongs_to :turma
  belongs_to :aluno
  has_many :avaliacaos

  def display_name
  	self.id
  end
end
