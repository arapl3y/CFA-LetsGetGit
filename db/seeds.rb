# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'teacher1@gmail.com', username: "Teacher1", password: 'asdfasdf')
User.create!(email: 'student1@gmail.com', username: "student1", password: 'asdfasdf')
User.create!(email: 'student2@gmail.com', username: "student2", password: 'asdfasdf')
User.create!(email: 'student3@gmail.com', username: "student3", password: 'asdfasdf')
