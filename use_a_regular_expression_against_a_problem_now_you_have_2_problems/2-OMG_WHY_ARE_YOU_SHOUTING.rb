#!/usr/bin/ruby
ARGV[0].split("").each do |i| # Loop to print one character at a time
  print i.match(/[A-Z!]/) # Prints characters matching a capital letter or '!'
  end # End of loop
print "\n" # Prints new line after all characters matching regex have been printed
