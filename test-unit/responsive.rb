#!/usr/bin/env ruby

plugin_name = "Responsive"
plugin_filename = "responsive"
plugin_sasspath = "scss/framework"
plugin_csspath = "test-unit/css/framework"

puts "Starting #{plugin_name} test unit"

path = "sass #{plugin_sasspath}/#{plugin_filename}.scss #{plugin_csspath}/#{plugin_filename}-testunit.css"
raise path unless $?.to_i == 0

puts "Compiling #{plugin_name}"
system(path)

if File.exists?("#{plugin_csspath}/#{plugin_filename}-testunit.css")
	puts "Successfull compiled!"
else
	puts "Fail to compile!"
end
puts '-----------------------------------------------------'
