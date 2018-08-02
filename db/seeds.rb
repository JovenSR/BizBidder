# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!firstName: 'Joven', lastName: 'Rai',  email:'jv@gmail.com', phone:'778-989-1020', userrole: 'user',  password_digest: User.digest('123')
user2 = User.create!firstName: 'Khoa', lastName: 'Nguyen',  email:'kn@gmail.com', phone:'778-889-1122', userrole: 'user',  password_digest: User.digest('123')
user3 = User.create!firstName: 'Hamish', lastName: 'Gray',  email:'hg@gmail.com', phone:'778-981-1547', userrole: 'user',  password_digest: User.digest('123')
user4 = User.create!firstName: 'Johnathan', lastName: 'Singh',  email:'js@gmail.com', phone:'604-876-1822', userrole: 'user',  password_digest: User.digest('123')
user5 = User.create!firstName: 'Terry', lastName: 'Parmar',  email:'tp@gmail.com', phone:'778-989-6785', userrole: 'user',  password_digest: User.digest('123')
user6 = User.create!firstName: 'Jesse', lastName: 'James',  email:'jj@gmail.com', phone:'604-869-1122', userrole: 'user',  password_digest: User.digest('123')
user7 = User.create!firstName: 'Jennifer', lastName: 'Smith',  email:'js2@gmail.com', phone:'778-909-1122', userrole: 'user',  password_digest: User.digest('123')
user8 = User.create!firstName: 'Jamal', lastName: 'Davids',  email:'jd2@gmail.com', phone:'778-908-7869', userrole: 'user',  password_digest: User.digest('123')
user9 = User.create!firstName: 'Stephanie', lastName: 'Forester',  email:'sf@gmail.com', phone:'604-127-1172', userrole: 'user',  password_digest: User.digest('123')
user10 = User.create!firstName: 'Jashan', lastName: 'Khela',  email:'jk@gmail.com', phone:'778-351 -5555', userrole: 'service_provider',  password_digest: User.digest('123')
user11 = User.create!firstName: 'Mindy', lastName: 'Tan',  email:'mt@hotmail.com', phone:'604-489-1122', userrole: 'service_provider',  password_digest: User.digest('123')
user12 = User.create!firstName: 'Don', lastName: 'Johnson',  email:'dj@gmail.com', phone:'555-689-1122', userrole: 'service_provider',  password_digest: User.digest('123')
user13 = User.create!firstName: 'Carmen', lastName: 'Shin',  email:'cs@gmail.com', phone:'778-987-5122', userrole: 'service_provider', password_digest: User.digest('123')
user14 = User.create!firstName: 'Caroline', lastName: 'Jin',  email:'cj@gmail.com', phone:'604-987-5122', userrole: 'service_provider', password_digest: User.digest('123')
user15 = User.create!firstName: 'Leo', lastName: 'Ruan',  email:'lr@gmail.com', phone:'604-678-5112', userrole: 'service_provider', password_digest: User.digest('123')
user16 = User.create!firstName: 'Steve', lastName: 'Wonders',  email:'sw@gmail.com', phone:'778-461-5122', userrole: 'service_provider', password_digest: User.digest('123')
user17 = User.create!firstName: 'Lynette', lastName: 'Liu',  email:'ll@gmail.com', phone:'604-987-5442', userrole: 'service_provider', password_digest: User.digest('123')
user18 = User.create!firstName: 'Mani', lastName: 'Quinto',  email:'mq@gmail.com', phone:'778-144-5122', userrole: 'service_provider', password_digest: User.digest('123')



request1 = user1.requests.create!({
  name: 'Makeup Artist needed for wedding',
  description: 'I have a wedding next year and I need a team of makeup artists to do makeup for 20 ladies. Ideally someone who knows how to do nails and hair as well',
  budget: '1500',
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
  budget: '3500',
  proposalDeadline: '2018/10/01',
  eventDate: '2018/10/11',
  city: 'Surrey',
  province: 'BC',
  category: 'Food Services',
  status: 'Open'
})

request3 = user3.requests.create!({
  name: 'Tree trimming needed',
  description: 'Large cedar tree needs trimming.',
  budget: '300',
  proposalDeadline: '2018/08/30',
  eventDate: '2018/09/05',
  city: 'Burnaby',
  province: 'BC',
  category: 'Farm & Garden Services',
  status: 'Open'
})

request4 = user4.requests.create!({
  name: 'Hair stylist needed for wedding',
  description: 'I have a wedding next year and I need a team of hair stylists to do makeup for 20 ladies. Ideally someone who knows how to do nails and hair as well',
  budget: '1500',
  proposalDeadline: '2018/08/11',
  eventDate: '2018/09/30',
  city: 'Vancouver',
  province: 'BC',
  category: 'Beauty Services',
  status: 'Open'
})

request5 = user5.requests.create!({
  name: 'Tent needed for wedding',
  description: '3 big tents needed for wedding pre-parties held at my home',
  budget: '3000',
  proposalDeadline: '2018/08/30',
  eventDate: '2018/09/30',
  city: 'Vancouver',
  province: 'BC',
  category: 'Event Services',
  status: 'Open'
})

request6 = user6.requests.create!({
  name: 'Birthday Party, need caterer',
  description: 'I have a bday party at my house and there will 25 people attending. There will be 5 vegans at the party so I need variety. Also, there are no food allergies to be worried about',
  budget: '800',
  proposalDeadline: '2018/08/30',
  eventDate: '2018/09/30',
  city: 'Langley',
  province: 'BC',
  category: 'Food Services',
  status: 'Open'
})

request7 = user7.requests.create!({
  name: 'Need someone to design garden',
  description: 'I am renovating my property and I want a complete redesign of my garden. The area is about 2000 square feet.',
  budget: '5000',
  proposalDeadline: '2018/08/15',
  eventDate: '2018/09/05',
  city: 'Abbotsford',
  province: 'BC',
  category: 'Farm & Garden Services',
  status: 'Open'
})

request8 = user8.requests.create!({
  name: 'Looking for a makeup artist',
  description: 'My daughter is having her sweet 16th and we need someone to do makeup for her and her 10 friends.',
  budget: '900',
  proposalDeadline: '2018/08/24',
  eventDate: '2018/09/07',
  city: 'Vancouver',
  province: 'BC',
  category: 'Beauty Services',
  status: 'Open'
})

request9 = user9.requests.create!({
  name: 'Professional Decorator needed',
  description: 'Hello. I am looking for a professional decorator to do the decorations for my networking event held at a hall. You will need to do decorations for 3 large rooms that can each hold 100 people.',
  budget: '2500',
  proposalDeadline: '2018/08/18',
  eventDate: '2018/09/15',
  city: 'North Vancouver',
  province: 'BC',
  category: 'Event Services',
  status: 'Open'
})

service_provider_1 = user10.service_providers.create!({
  companyName: 'Jay Tent Rentals',
  street: '1304 Hornby St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V6M 1L9',
  email: 'jashanservice@email.ca',
  phone: '778-565-7855',
  serviceType: 'Event Services',
  website: 'http://www.JayTents.com',
  license: true
})
service_provider_1.proposals.create!({
  description: 'I would like to take this request. My company has multiple large tents that would be perfect for your event. Contact me for more details.',
  price: '2800',
  request_id: 5 
})

service_provider_2 = user11.service_providers.create!({
  companyName: 'Mindy Catering Company',
  street: '555 Seymour St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V7B 3B5',
  email: 'mindyfoodservice@gmail.com',
  phone: '604-893-5627',
  serviceType: 'Food Services',
  website: 'http://www.mindycatering.com',
  license: true
})
service_provider_2.proposals.create!({
  description: 'I would like to take this request. My company is specialized in catering food for parties.',
  price: '3500',
  request_id: 2 
})

service_provider_3 = user12.service_providers.create!({
  companyName: 'Don Landscaping',
  street: '456 Granville St',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V7L 3K5',
  email: 'DonLand@gmail.com',
  phone: '604-675-5585',
  serviceType: 'Farm & Garden Services',
  website: 'http://www.donland.com',
  license: true
})

service_provider_3.proposals.create!({
  description: 'Hey, I can provide this service. Professional and been in business for over 15 years.',
  price: '320',
  request_id: 3
})


service_provider_4 = user13.service_providers.create!({
  companyName: 'Surrey Salon',
  street: '134 street',
  city: 'Surrey',
  province: 'BC',
  postalCode: 'V6M 1L9',
  email: 'beautyservice@gmail.com',
  phone: '778-565-8975',
  serviceType: 'Beauty Services',
  website: 'http://www.surreysalon.com',
  license: true
})

service_provider_4.proposals.create!({
  description: 'I can provide 5 hair stylists for this event. We will arrive early and you wont be dissapointed.',
  price: '1500',
  request_id: 4
})

service_provider_5 = user14.service_providers.create!({
  companyName: 'SuperBeauty Salon',
  street: '152 st',
  city: 'Surrey',
  province: 'BC',
  postalCode: 'V5M 1L3',
  email: 'superservice@gmail.com',
  phone: '604-652-8975',
  serviceType: 'Beauty Services',
  website: 'http://www.superbeauty.com',
  license: true
})

service_provider_5.proposals.create!({
  description: 'Hello. We would like to take this request. Check out our website for pictures of our previous work.',
  price: '1500',
  request_id: 1
})

service_provider_6 = user15.service_providers.create!({
  companyName: 'Leo Catering Company',
  street: '1800 Robson st',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V4B 8L3',
  email: 'Leofoods@gmail.com',
  phone: '604-657-7875',
  serviceType: 'Food Services',
  website: 'http://www.leofoods.com',
  license: true
})

service_provider_6.proposals.create!({
  description: 'We provide the best food catering services in town and have been serving the Lower Mainland for 11 years now. Let me know if you are interested.',
  price: '900',
  request_id: 6
})

service_provider_7 = user16.service_providers.create!({
  companyName: 'Garden Design & Floral Services',
  street: '2000 Marine Drive',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V5N R6T',
  email: 'SteveGarden@gmail.com',
  phone: '778-667-7975',
  serviceType: 'Farm & Garden Services',
  website: 'http://www.stevegarden.com',
  license: true
})

service_provider_7.proposals.create!({
  description: 'Will design, build, and plant the garden. Bid price includes design drawings, build materials, flowers and plants. Take a look at my instagram page for my results. Thanks.',
  price: '5200',
  request_id: 7
})

service_provider_8 = user17.service_providers.create!({
  companyName: 'Lyn Makeup and Spa',
  street: '1000 Cambie Street',
  city: 'Vancouver',
  province: 'BC',
  postalCode: 'V6B Y7T',
  email: 'lynmakeup@gmail.com',
  phone: '778-654-7935',
  serviceType: 'Beauty Services',
  website: 'http://www.lynmakeup.com',
  license: true
})

service_provider_8.proposals.create!({
  description: 'Hello I am an expert makeup artist and my partner and I can do the makeup for everyone. Looking forward to hearing back from you.',
  price: '900',
  request_id: 8
})

service_provider_9 = user18.service_providers.create!({
  companyName: 'Mani Decorations',
  street: '1800 160th st',
  city: 'Surrey',
  province: 'BC',
  postalCode: 'V4M Y9M',
  email: 'manidecorations@gmail.com',
  phone: '778-654-7935',
  serviceType: 'Event Services',
  website: 'http://www.manidecorations.com',
  license: true
})

service_provider_9.proposals.create!({
  description: 'Hi, how are you? I have done a lot of large scale decorations like this before so let me know if you want more details. You cant beat me for the price and quality. Thanks.',
  price: '2450',
  request_id: 9
})