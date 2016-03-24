#!/usr/bin/ruby
send = ARGV[0].scan(/(?<=\[from:)\+?\w+/).join # Finds string containing 'from:' and prints word or numbers after it
rec = ARGV[0].scan(/(?<=\[to:)\+?\w+/).join  # Finds string containing 'to:' and prints word or numbers after it
flag = ARGV[0].scan(/(?<=\[flags:)[\-?\d\:]+/).join # Finds string containing 'flags:' and prints digits, '-', and ':' after it
puts send + "," + rec + "," + flag # Displays above matches to the stdout, separated by commas 
