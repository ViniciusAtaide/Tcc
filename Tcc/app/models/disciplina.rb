class Disciplina < ActiveRecord::Base
  has_many :planos
  has_many :avaliacoes

  def display_name
  	self.nome
  end
end
