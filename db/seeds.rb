# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Deal.create!([
  { name: "Deal 1", address: "123 Any Street", city: "Sheboigan", state: "WI", zip: "14087", total_capital_call: "450000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 2", address: "456 Crack Rd", city: "Champaign", state: "Il", zip: "14087", total_capital_call: "590000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 3", address: "897 Freezing Cold Pl", city: "Anarbor", state: "MI", zip: "14087", total_capital_call: "50000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 4", address: "155 Any Street", city: "Detroit", state: "MI", zip: "11155", total_capital_call: "95", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 5", address: "777 Pleasant View", city: "Whidbey Island", state: "WA", zip: "14077", total_capital_call: "4500000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 6", address: "9998 Any Street", city: "Cle Elum", state: "WA", zip: "14796", total_capital_call: "950000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 7", address: "187 Murda Street", city: "Oakland", state: "CA", zip: "40187", total_capital_call: "10000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
  { name: "Deal 8", address: "6678 Rough Lane", city: "Chicago", state: "IL", zip: "14087", total_capital_call: "450000", closing_date: Date.today + 50.days, promote_equity_percentage: 50, investor_equity_percentage: 50 },
])

User.create([
  { first_name: 'Mickey', last_name: 'Mouse', mobile_phone: '000-000-0020', email: 'Mickey@test.com', password: 'password', password_confirmation: 'password'},
  { first_name: 'Minnie', last_name: 'Mouse', mobile_phone: '000-000-0030', email: 'Minnie@test.com', address: '1234 any street', city: 'Smalltownusa', zip: '61873',password: 'password', password_confirmation: 'password' },
  { first_name: 'Donald', last_name: 'Duck', mobile_phone: '000-000-0040', email: 'donald@test.com', address: '1940 any street', city: 'Smalltownusa', zip: '61873',password: 'password', password_confirmation: 'password'  },
  { first_name: 'Scrooge', last_name: 'McDuck', mobile_phone: '000-000-0050', email: 'Scrooge@test.com', address: '2050 any street', city: 'Smalltownusa', zip: '61873',password: 'password', password_confirmation: 'password' }, 
  { first_name: 'Gary', last_name: 'Ferguson', mobile_phone: '000-000-0060', email: 'gary@test.com', address: '3060 any street', city: 'Smalltownusa', zip: '61873',password: 'password', password_confirmation: 'password' },
  { first_name: 'Turd', last_name: 'Ferguson', mobile_phone: '000-000-0070', email: 'turd@test.com', address: '4080 any street', city: 'Smalltownusa', zip: '61873',password: 'password', password_confirmation: 'password' },
])
