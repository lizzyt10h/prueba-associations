# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
# **** Carrera Ingeniería de Sistemas ***
career = Career.create({name: 'Ingeniería de Sistemas'})

mallaSis = Malla.create({name: 'Ingeniería de Sistemas'})
#mallaSis = Malla.find_by name: 'Ingeniería de Sistemas'
career.mallas << mallaSis

newSubjects = Subject.create([{:name => 'Intro', :credits => 3}, {:name => 'Matemáticas Discretas', :credits => 3}, {:name => 'Cálculo 1', :credits => 4}, {:name => 'Cálculo 2', :credits => 4}])

mallaSis.semesters.create([{:number => 1}, {:number => 2}, {:number => 3}, {:number => 4}, {:number => 5}])

sem = mallaSis.semesters.find_by number: 1

subj = Subject.find_by(name: 'Intro')
career.career_has_subjects << CareerHasSubject.create( :subject => subj, :typology => 'C')
sem.subjects << subj

subj = Subject.find_by(name: 'Matemáticas Discretas')
career.career_has_subjects << CareerHasSubject.create( :subject => subj, :typology => 'P')
sem.subjects << subj

sem = mallaSis.semesters.find_by number: 2

subj = Subject.find_by(name: 'Cálculo 1')
career.career_has_subjects << CareerHasSubject.create( :subject => subj, :typology => 'B')
sem.subjects << subj

sem = mallaSis.semesters.find_by number: 3

subj = Subject.find_by(name: 'Cálculo 2')
career.career_has_subjects << CareerHasSubject.create( :subject => subj, :typology => 'B')
sem.subjects << subj
=end


#=begin
# *** Prueba de asociaciones bidireccionales de muchos a muchos con modelos User y Follow ***

user = User.create({name: "Lizzy"})
fllwr = User.create({name: "Juan"})

user.followers << fllwr
#=end