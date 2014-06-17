class Disciplina < ActiveRecord::Base
  belongs_to :plano
  has_many :avaliacaos
end
