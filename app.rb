#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative 'lib/placeholder'

@placeholder = Placeholder.new

STDIN.read.split("\n").each do |a|
  puts @placeholder.holds_place(a)
end
