require 'webrick'
 
include WEBrick

system('sass --watch scss:css &')

port = 6666
puts ' __                _   _     ____  '
puts '/ _\ ___ _ __ __ _| |_| |__ |___ \ '
puts '\ \ / __| `__/ _` | __| `_ \  __) |'
puts '_\ \ (__| | | (_| | |_| | | |/ __/ '
puts '\__/\___|_|  \__,_|\__|_| |_|_____|'
puts "Scrath Development Web Server"
puts "Starting server: http://localhost:#{port}"
puts "---------------------------------------"
server = HTTPServer.new(:Port=>6666,:DocumentRoot=>Dir::pwd)

trap("INT"){ server.shutdown }
server.start