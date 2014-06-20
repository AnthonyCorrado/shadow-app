# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Brewery.destroy_all

#   Brewery.create(brewery_id: 1, brewery_name: "General Beer", brewery_city: "St. Louis",
#   	brewery_state: "Missouri", country_name: "United States", lat: 43.408794, lng: -84.606163)
#   Brewery.create(brewery_id: 2, brewery_name: "General Alcoholics", brewery_city: "Santa Monica",
#   	brewery_state: "California", country_name: "United States", lat: 34.013262, lng: -118.495207)
#   Brewery.create(brewery_id: 3, brewery_name: "Duff Beer", brewery_city: "Springfield",
#   	brewery_state: "Illinois", country_name: "United States", lat: 39.765949, lng:  -89.660532)
#   Brewery.create(brewery_id: 4, brewery_name: "Drunk Monkey", brewery_city: "Santa Monica",
#   	brewery_state: "California", country_name: "United States", lat: 34.012272, lng: -118.422272)
#   Brewery.create(brewery_id: 5, brewery_name: "August Schell Brewing Company", brewery_city: "New Ulm",
#   	brewery_state: "Minnesota", country_name: "United States", lat: 44.289864, lng: -94.449099)
#   Brewery.create(brewery_id: 6, brewery_name: "Fitger's Brewhouse", brewery_city: "Duluth",
#   	brewery_state: "Minnesota", country_name: "United States", lat: 46.792736, lng: -92.090637)

records = JSON.parse(File.read('db/beers.json'))
records.each do |record|
  record = record.except('url')
  Beer.create(record)
end

morerecords = JSON.parse(File.read('db/checkins.json'))
morerecords.each do |mrecord|
  Checkin.create(mrecord)
end