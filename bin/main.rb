#!/usr/bin/env ruby
require '../lib/logic.rb'

$random_colors = color_picker



puts ' '
puts $random_colors
puts ' '
player_guess()
puts ' '
puts $guess_array
match_check
