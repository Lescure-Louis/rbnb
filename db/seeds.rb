# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy animals"
Costume.destroy_all

puts "Destroy Users"
User.destroy_all



puts 'Creating user...'

 leo = User.new({
  email: 'leo@gmail.com',
  password: '123456'
  })

 leo.save


 puts 'Finished!'


 puts 'Creating costumes...'

  dress = Costume.new({
     name:      'Dress',
     size:      'XS',
     price: 15
   })

  dress.user = leo
  dress.save

 puts 'Finished!'
