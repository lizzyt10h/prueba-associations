# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#mallaSis = Malla.create({name: 'Ingeniería de Sistemas'})
mallaSis = Malla.find_by name: 'Ingeniería de Sistemas'
#sem1 = Semester.create(number: 1)
#mallaSis.semesters = sem1
mallaSis.semesters.create([{:number => 2}, {:number => 3}, {:number => 4}, {:number => 5}, {:number => 6}])
