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

puts "Adding fig types to table..."

fig_names = ["Plush", "PVC Figure", "Vinyl Figure", "Plastic Figure", "Polystone (Polyethylene) Statuette", "Resin Figure", "Acrylic Stand"]

fig_brands = ["Banpresto", "Nendoroid (Good Smile)", "SEGA", "Taito", "Figma (Good Smile)", "Funko", "Sideshow", "Sentinel", "Bandai", "Tsum-Tsum (Disney)"]

otakus = Otaku.all

FigType.destroy_all

10.times do
  fig_type = FigType.new(
    name: fig_names.sample,
    brand: fig_brands.sample,
  )

  fig_type.save!
end

puts "Fig types added!"

puts "Adding locations..."

Location.destroy_all

location_one = Location.new(
  name: "Kotobukiya",
  loc_type: "Anime Goods Shop"
)
location_two = Location.new(
  name: "Mandarake",
  loc_type: "Secondhand Shop"
)
location_three = Location.new(
  name: "Animate",
  loc_type: "Anime Goods Shop"
)
location_four = Location.new(
  name: "Comiket",
  loc_type: "Convention"
)
location_five = Location.new(
  name: "SEGA",
  loc_type: "Arcade"
)
location_six = Location.new(
  name: "Adores",
  loc_type: "Arcade"
)
location_seven = Location.new(
  name: "JUMPFEST",
  loc_type: "Special Event"
)
location_eight = Location.new(
  name: "Gachapon Kaikan",
  loc_type: "Gachapon"
)

Location.create!(location_one, location_two, location_three, location_four, location_five, location_six, location_seven, location_eight)

puts "Location have been loaded!"