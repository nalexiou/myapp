

site = "https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA5Q2yOk-Jz77cOdx0xJCZIj0GI4mlOnNo"


require 'open-uri'
require 'json'
require 'geocode'

my_hash = JSON.parse open(site).read
puts my_hash["results"][0]["geometry"]["location"]["lat"]
puts my_hash["results"][0]["geometry"]["location"]["lng"]




