class MatriculasController < ApplicationController
  def index
  	@matriculas = Matricula.all  	
  end
end
