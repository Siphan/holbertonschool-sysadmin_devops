#!/usr/bin/ruby
 puts ARGV[0].match(/[a-zA-Z\d]* [a-zA-Z\d]*/) # regexp prints special char '!', need to correct this
# The regular expression must be exactly matching: characters then a space and then characters and stop matching if special character is encountered
