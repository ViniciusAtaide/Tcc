class AvaliacaosController < ApplicationController
  def index
  	@matricula = Matricula.find params[:matricula_id]
  	@avaliacoes = @matricula.avaliacoes
  end
end

