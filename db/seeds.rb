# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Deal.create!([
  {}
])

User.create([
  { first_name: 'Mickey', last_name: 'Mouse', mobile_phone: '000-000-0020', email: 'Mickey@test.com' },
  { first_name: 'Minnie', last_name: 'Mouse', mobile_phone: '000-000-0030', email: 'Minnie@test.com', address: '1234 any street', city: 'Smalltownusa', zip: '61873' },
  { first_name: 'Donald', last_name: 'Duck', mobile_phone: '000-000-0040' '1900-01-01', address: '1940 any street', city: 'Smalltownusa', zip: '61873'  },
  { first_name: 'Scrooge', last_name: 'McDuck', mobile_phone: '000-000-0050' '1900-01-01', address: '2050 any street', city: 'Smalltownusa', zip: '61873' }, 
  { first_name: 'Gary', last_name: 'Ferguson', mobile_phone: '000-000-0060' '3060 any street', city: 'Smalltownusa', zip: '61873' },
  { first_name: 'Turd', last_name: 'Ferguson', mobile_phone: '000-000-0070' '1900-01-01', address: '4080 any street', city: 'Smalltownusa', zip: '61873' },
])
