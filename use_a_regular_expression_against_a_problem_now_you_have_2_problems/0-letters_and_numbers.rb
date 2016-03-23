#!/usr/bin/ruby
ARGV[0].split("").each do |i| # Loop to print one character at a time
  print i.match(/[a-zA-Z0-9]/) # Prints characters matching a letter or digit
end # End of loop
print "\n" # Prints new line after all characters matching regex have been printed
