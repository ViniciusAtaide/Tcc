class Prova < ActiveRecord::Base
  has_one :avaliacao

  def display_name
  	self.descricao
  end
end
