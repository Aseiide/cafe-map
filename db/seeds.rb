# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  Cafe.create(id: n, address: "東京都港区芝公園1-#{n}", name: "Sample Cafe#{n}", latitude: 35.658584, longitude: 139.7454316)
end

