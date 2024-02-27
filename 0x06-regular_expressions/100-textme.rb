#!/usr/bin/env ruby
# 100-textme.rb

if ARGV.length != 1
  puts "Usage: ./100-textme.rb '<logline>'"
  exit 1
end

log_line = ARGV[0]

pattern = /\[from:(.+?)\] \[to:(.+?)\] \[flags:(.+?)\]/

matches = log_line.match(pattern)

if matches
  sender, receiver, flags = matches.captures
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found in the provided log line."
end
