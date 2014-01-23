#!/usr/bin/env ruby
result = 'sass scss/scrath-bundle.scss css/scrath-bundle.css'
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('css/scrath-bundle.css')
puts "Regular compile worked successfully"