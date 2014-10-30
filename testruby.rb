# require 'net/http' 
# require 'uri'

# #site = URI.parse('https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA5Q2yOk-Jz77cOdx0xJCZIj0GI4mlOnNo')


site = "https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA5Q2yOk-Jz77cOdx0xJCZIj0GI4mlOnNo"

# site ="http://www.example.com/index.html"
# # url = URI.parse('http://www.example.com/index.html')
# # url = https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA5Q2yOk-Jz77cOdx0xJCZIj0GI4mlOnNo


# # res = Net::HTTP.start(url.host, url.port) {|http|
# #   http.get('/index.html')
# # }
# # puts res.body


# #   open("http://www.ruby-lang.org/") {|f|
# #     f.each_line {|line| p line}
# #   }

# puts Net::HTTPS.get('maps.googleapis.com', '/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyA5Q2yOk-Jz77cOdx0xJCZIj0GI4mlOnNo')

#  # open(site) {|f|
#  #    f.each_line {|line| p line}
#  #  }

require 'open-uri'
require 'json'
require 'geocode'

my_hash = JSON.parse open(site).read
puts my_hash["results"][0]["geometry"]["location"]["lat"]
puts my_hash["results"][0]["geometry"]["location"]["lng"]
puts request.location



