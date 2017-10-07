# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#mallaSis = Malla.create({name: 'Ingeniería de Sistemas'})
#mallaSis = Malla.find_by name: 'Ingeniería de Sistemas'
#mallaSis.semesters.create([{:number => 2}, {:number => 3}, {:number => 4}, {:number => 5}, {:number => 6}])
#sem = mallaSis.semesters.find_by number: 2
#sem.subjects.create([{:name => 'Cálculo 1', :credits => 4}, {:name => 'Intro', :credits => 3}, {:name => 'Matemáticas Discretas', :credits => 3}])

#career = Career.create({name: 'Ingeniería de Sistemas'})
#career.mallas << mallaSis

#career = Career.find_by name: 'Ingeniería de Sistemas'
subj1 = Subject.find_by name: 'Cálculo 1'
subj2 = Subject.find_by name: 'Intro'
subj3 = Subject.find_by name: 'Matemáticas Discretas'
#career.subjects << subj1
#career.subjects << subj2
#career.subjects << subj3


career = Career.find_by name: 'Ingeniería de Sistemas'
career.career_has_subjects << CareerHasSubject.new( :subject => subj1, :typology => 'B')
career.career_has_subjects << CareerHasSubject.new( :subject => subj2, :typology => 'C')
career.career_has_subjects << CareerHasSubject.new( :subject => subj3, :typology => 'B')