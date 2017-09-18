# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all

faisal = Student.create!(username: "Faisal", email: "faisal@gmail.com", password: "123456", admin: true)
serene = Student.create!(username: "Serene", email: "serene@gmail.com", password: "123456", admin: false)
jane = Student.create!(username: "Jane", email: "jane@gmail.com", password: "123456", admin: false)
ann = Student.create!(username: "Ann", email: "ann@gmail.com", password: "123456", admin: false)
eden = Student.create!(username: "Eden", email: "eden@gmail.com", password: "123456", admin: false)
amy = Student.create!(username: "Amy", email: "amy@gmail.com", password: "123456", admin: false)
john = Student.create!(username: "John", email: "john@gmail.com", password: "123456", admin: false)
