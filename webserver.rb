require 'webrick'
 
include WEBrick

system('sass --watch scss:css &')

require './build/sass-testunity'

port = 666
puts "Scrath Development Web Server"
puts "Starting server: http://lochost:#{port}"
puts "---------------------------------------"
server = HTTPServer.new(:Port=>666,:DocumentRoot=>Dir::pwd)

trap("INT"){ server.shutdown }
server.start