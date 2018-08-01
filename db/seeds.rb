# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!firstName: 'Joven', lastName: 'Rai',  email:'jv@gmail.com', phone:'778-989-1020', userrole: 'user',  password_digest: User.digest('123')
user2 = User.create!firstName: 'Khoa', lastName: 'Nguyen',  email:'kn@gmail.com', phone:'778-889-1122', userrole: 'user',  password_digest: User.digest('123')
user3 = User.create!firstName: 'Jashan', lastName: 'Khela',  email:'jd@gmail.com', phone:'778-351 -5555', userrole: 'service_provider',  password_digest: User.digest('123')
user4 = User.create!firstName: 'Mindy', lastName: 'Tan',  email:'mt@hotmail.com', phone:'604-489-1122', userrole: 'service_provider',  password_digest: User.digest('123')
user5 = User.create!firstName: 'Don', lastName: 'Johnson',  email:'dj@gmail.com', phone:'555-689-1122', userrole: 'service_provider',  password_digest: User.digest('123')
user6 = User.create!firstName: 'Carmen', lastName: 'Shin',  email:'cs@gmail.com', phone:'778-987-5122', userrole: 'service_provider', password_digest: User.digest('123')



request1 = user1.requests.create!({
  name: 'Makeup Artist needed for wedding',
  description: 'I have a wedding next year and I need a team of makeup artists to do makeup for 20 ladies. Ideally someone who knows how to do nails and hair as well',
  budget: '$1500',
  proposalDeadline: '2018/08/11',
  eventDate: '2018/09/30',
  city: 'Vancouver',
  province: 'BC',
  category: 'Beauty Services',
  status: 'Open'
})

 

request2 = user2.requests.create!({
  name: 'Caterer needed for party',
  description: 'Im hosting a party at my house and need a caterer service to provide Indian food. There will be 85 people at the party.',
  budget: '$3500',
  proposalDeadline: '2018/10/01',
  eventDate: '2018/10/11',
  city: 'Surrey',
  province: 'BC',
  category: 'Food Services',
  status: 'Open'
})

request3 = user1.requests.create!({
  name: 'Tree trimming needed',
  description: 'Large cedar tree needs trimming.',
  budget: '$300',
  proposalDeadline: '2018/08/30',
  eventDate: '2018/09/05',
  city: 'Burnaby',
  province: 'BC',
  category: 'Farm & Garden Services',
  status: 'Open'
})

user2.requests.create!({
  name: 'Tent needed for wedding',
  description: '3 big tents needed for wedding pre-parties held at my home',
  budget: '$3000',
  proposalDeadline: '2018/08/30',
  eventDate: '2018/09/30',
  city: 'Vancouver',
  province: 'BC',
  category: 'Event Services',
  status: 'Open'
})

service_provider_3 = user3.service_providers.create!({
  companyName: 'Beauty Salon Service',
  street: '1304 Hornby St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V6M 1L9',
  email: 'jashanservice@email.ca',
  phone: '778-555-5555',
  serviceType: 'Beauty Services',
  website: 'http://www.google.com',
  license: true
})
service_provider_3.proposals.create!({
  description: 'I would like to take this request. My company has a team of 10 makeup artists',
  price: '1550',
  request_id: 1 
})

service_provider_4 = user4.service_providers.create!({
  companyName: 'Mindy Catering Company',
  street: '555 Seymour St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V7B 3B5',
  email: 'mindyfoodservice@email.ca',
  phone: '555-555-5555',
  serviceType: 'Food Services',
  website: 'http://www.reddit.com',
  license: false
})
service_provider_4.proposals.create!({
  description: 'I would like to take this request. My company is specialized in catering food for parties.',
  price: '3700',
  request_id: 2 
})

user5.service_providers.create!({
  companyName: 'Don Tent Rental',
  street: '456 Granville St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V7L 3K5',
  email: 'Jashan@gmail.ca',
  phone: '604-555-5555',
  serviceType: 'Event Services',
  website: 'http://www.reddit.com',
  license: false
})
user6.service_providers.create!({
  companyName: 'Carmen Nail salon',
  street: '456 Granville St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V7L 3K5',
  email: 'laura@gmail.ca',
  phone: '604-555-5555',
  serviceType: 'Beauty Services',
  website: 'http://www.reddit.com',
  license: true
})



