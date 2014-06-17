# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Aluno.create nome: "Aluno",
                 responsavel: "Responsavel",
                 fone: 12345,
                 sexo: true
t = Turma.create turno: "Manhã",
                 sub: "A",
                 serie: 7
m = Matricula.create turma: t,
                     aluno: a
d = Disciplina.create nome: 'Biologia',
                      cod: 1
p = Professor.create nome: 'Marcos',
                     matricula: 1
pl = Plano.create descricao: 'Ensinar o básico',
                  disciplina: d,
                  professor: p,
                  turma: t