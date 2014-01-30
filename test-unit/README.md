# Scrath 2
[![Build Status](https://travis-ci.org/gustavokuklinski/Scrath2.png?branch=master)](https://travis-ci.org/gustavokuklinski/Scrath2)

# Test Unit
Every component on S2 need to be tested before get in production. You can write your Ruby test script in this folder using the template bellow:

```ruby
#!/usr/bin/env ruby

plugin_name = "My plugin"
plugin_filename = "myplugin"
plugin_sasspath = "scss/plugins"
plugin_csspath = "test-unit/css/your/structure"

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
```

All vendor plugins had been tested before get packed! :)