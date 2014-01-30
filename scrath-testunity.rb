#!/usr/bin/env ruby
puts ' __                _   _     ____  '
puts '/ _\ ___ _ __ __ _| |_| |__ |___ \ '
puts '\ \ / __| `__/ _` | __| `_ \  __) |'
puts '_\ \ (__| | | (_| | |_| | | |/ __/ '
puts '\__/\___|_|  \__,_|\__|_| |_|_____|'
puts ''
puts 'Starting Scrath2 test unit...'
puts 'Follow logs to get info.'
puts ''

Dir["./test-unit/*.rb"].each {|file| require file }