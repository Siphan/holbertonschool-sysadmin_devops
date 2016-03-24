#!/usr/bin/ruby
puts ARGV[0].scan(/(^\w+\s\w+|^\w+\W)/).join # output of scan only includes what is matched by the delimiter |, ie only outputs a word followed by a whitespace and another word. 
# The regular expression must be exactly matching: characters then a space and then characters and stop matching if special character is encountered