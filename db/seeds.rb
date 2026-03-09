# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Mauri", last_name: "Sagardoy", email: "mauri@hotmail.com", password: "123456",role: "Admin")
User.create(name: "Juan", last_name: "Perez", email: "juanp@hotmail.com", password: "987654",role: "Usuario")
Book.create(name:"IT(Eso)", author: "Stephen King", year_publication: Date.new(1986,9,15), editorial: "Viking Press")
Book.create(name: "En la hierba alta", author: "Stephen King", year_publication: Date.new(2012,1,1), editorial: "Scribner")
Book.create(name: "El resplandor", author: "Stephen King", year_publication: Date.new(1977,1,28), editorial: "Doubleday")