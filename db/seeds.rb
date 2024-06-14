tom = User.create(
  first_name: 'Tom',
  last_name: 'Jerry',
  email: 'tom1@example.com',
  phone_number: '12345',
  password: 'password'
)

jerry = User.create!(
  first_name: 'Jerry',
  last_name: 'Tom',
  email: 'jerry1@example.com',
  phone_number: '98765',
  password: 'password'
)

albume_one = MusicRecord.create(
  title: 'Album 1',
  price: 10.99,
  description: 'This is the first album.',
  rented: false
)

albume_two = MusicRecord.create(
  title: 'Album 2',
  price: 12.99,
  description: 'This is the second album.',
  rented: false
)

Order.create(
  user: tom,
  music_record: albume_one,
  start_date: Date.today
)

Order.create(
  user: jerry,
  music_record: albume_two,
  start_date: Date.today
)

Rental.create!(
  user: tom,
  music_record: albume_one,
  start_date: Date.today,
  end_date: 3.months.from_now,
  damage_assessment: 'No damage',
  price: 50.00
)

Rental.create!(
  user: jerry,
  music_record: albume_two,
  start_date: Date.today,
  end_date: 3.months.from_now,
  damage_assessment: 'No damage',
  price: 50.00
)