# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'teacher1@gmail.com', username: "Jamie", password: 'asdfasdf', user_id: 1)
user2 = User.create!(email: 'student1@gmail.com', username: "Marlon", password: 'asdfasdf', user_id: 2)
user3 = User.create!(email: 'student2@gmail.com', username: "Firman", password: 'asdfasdf', user_id: 3)
user4 = User.create!(email: 'student3@gmail.com', username: "Hannah", password: 'asdfasdf', user_id: 4)
user5 = User.create!(email: 'student4@gmail.com', username: "Shouhei", password: 'asdfasdf', user_id: 5)

user1.add_role :admin
user2.add_role :student
user3.add_role :student
user4.add_role :student
user5.add_role :student

student1 = User.find_by_email('student1@gmail.com')
list2 = student1.lists.first
list_id2 = list2.id
student1.plans.create!(title: 'Create Study App',type_of_study: 'Practicing', hours: '4', list_id: list_id2)
student1.plans.create!(title: 'EloquentJavascript',type_of_study: 'Reading', hours: '3', list_id: list_id2)
student1.plans.create!(title: 'Solve Code wars Problem 2',type_of_study: 'Practicing', hours: '3', list_id: list_id2)

teacher = User.find_by_email('teacher1@gmail.com')
list = teacher.lists.first
list_id = list.id
teacher.plans.create!(title: 'Koans', hours: '4', list_id: list_id)
teacher.plans.create!(title: 'Read Michael Hartl Ruby On Rails', hours: '3', list_id: list_id)
teacher.plans.create!(title: 'Solve Code wars', hours: '3', list_id: list_id)
teacher.plans.create!(title: 'Work on airbnb project', hours: '1', list_id: list_id)
teacher.plans.create!(title: 'Git projects everyday', hours: '1', list_id: list_id)
teacher.plans.create!(title: 'Contribute to open source', hours: '1', list_id: list_id)
teacher.plans.create!(title: 'Improve portfolio', hours: '2', list_id: list_id)


student2 = User.find_by_email('student2@gmail.com')
list3 = student2.lists.first
list_id3 = list3.id
student2.plans.create!(title: 'Rspec',type_of_study: 'Reading', hours: '1', list_id: list_id3)
student2.plans.create!(title: 'Learn Git',type_of_study: 'Practicing', hours: '2', list_id: list_id3)
student2.plans.create!(title: 'Stripe Payment',type_of_study: 'Reading', hours: '3', list_id: list_id3)

student3 = User.find_by_email('student3@gmail.com')
list4 = student3.lists.first
list_id4 = list4.id
student3.plans.create!(title: 'A-frame',type_of_study: 'Contributing', hours: '1', list_id: list_id4)
student3.plans.create!(title: 'GO',type_of_study: 'Contributing', hours: '2', list_id: list_id4)
student3.plans.create!(title: 'Python',type_of_study: 'Reading', hours: '3', list_id: list_id4)

student4 = User.find_by_email('student4@gmail.com')
list5 = student4.lists.first
list_id5 = list5.id
student4.plans.create!(title: 'Codewars',type_of_study: 'Practicing', hours: '4+', list_id: list_id5, completion: true)
student4.plans.create!(title: 'Codewars',type_of_study: 'Practicing', hours: '4+', list_id: list_id5, completion: true)
student4.plans.create!(title: 'Codewars',type_of_study: 'Practicing', hours: '4+', list_id: list_id5, completion: true)
