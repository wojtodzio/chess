#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

require 'init'

File.open ARGV[1] do |file|
  data = file.read
  puts FigureCollection.new(eval(ARGV[0]), data).moves
end