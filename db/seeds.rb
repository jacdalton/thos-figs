# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Generating big nerds..."

Otaku.destroy_all

big_nerds = ['Teru Mikami', 'Iida Tenya', 'Joe Kido', 'Yuuri Katsuki', 'Rei Ryugazaki', 'Mizuno Ami', 'Sakamoto-kun', 'Tsukishima Kei', 'Ikari Shinji', 'Anri Sonohara' ]

big_nerds.each do |nerd|
  Otaku.new(name: nerd).save!
end

puts "It's done."