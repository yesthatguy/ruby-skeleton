#!/usr/bin/env ruby
require 'placeholder'

@placeholder = Placeholder.new

STDIN.read.split("\n").each do |a|
   puts @placeholder.holds_place(a)
end
