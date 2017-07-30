 require 'twitter'
 require "rubygems"

 config = {
  :consumer_key    => "M9OV3yovcZ3BBtV1dkQhnNwDq",
  :consumer_secret => "xGtOpM03Wk3KQvdTf3dRdbS9QZPtfaARrfnnz3oqKONBDQqjvy",
}

client = Twitter::REST::Client.new(config)

screen_name = String.new ARGV[0]

a_user = Twitter.user(screen_name)

if a_user.geo_enabled == true

  long = a_user.status.place.bounding_box.coordinates[0][0][0]
  lat  = a_user.status.place.bounding_box.coordinates[0][0][1]

  Array tweets = Twitter::Search.new.geocode(lat, long, "5mi").fetch

  tweets.each do |t|

    puts t.from_user + " | " + t.text

  endend 
