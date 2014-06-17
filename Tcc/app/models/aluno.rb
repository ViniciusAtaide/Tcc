class Aluno < ActiveRecord::Base
	has_one :matricula
end
