class AvaliacaosController < ApplicationController
  def index
  	@matricula = Matricula.find params[:matricula_id]
  end
end

