# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all

Flatiron = School.create!(name: "Flatiron School", address:"11 Broadway")
NYU = School.create!(name: "NYU", address:"New York, NY 10003")
JJ = School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
CC = School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
CU = School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

Student.destroy_all

Student.create!(name: "Jonathan", age: 21, school: Flatiron)
Student.create!(name: "Suzie", age: 2, school: JJ)
Student.create!(name: "Chris", age: 55, school: CU)
Student.create!(name: "Tracie", age: 55, school: JJ)
Student.create!(name: "Jason", age: 55, school: Flatiron)
Student.create!(name: "Rutger", age: 55, school: CU)
Student.create!(name: "Kunxi", age: 55, school: NYU)
Student.create!(name: "Amy", age: 55, school: CC)
Student.create!(name: "Belinda", age: 55, school: Flatiron)
Student.create!(name: "Andy", age: 55, school: CC)
