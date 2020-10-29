# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stores = ["Shinee", "Exo-K", "The Boyz", "Mr. Mr"]

50.times do
    Coupon.create(coupon_code: Faker::Number.number(digits: 5).to_s, store: stores.sample)
end