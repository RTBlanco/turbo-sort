# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([
  {name: 'jeff', happy: true},
  {name: 'peter', happy: true},
  {name: 'lebron', happy: true},

  {name: 'Kim', happy: false},
  {name: 'bruce', happy: false},
  {name: 'Ana', happy: false}
])

active = Active.create()
active.users.create(name: 'kobe', happy: true)