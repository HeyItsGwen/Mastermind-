#!/usr/bin/env ruby
require '../lib/logic.rb'

$random_colors = color_picker
count = 0

puts "Welcome!"

while count < 12 && $win == false do


  player_guess()

  match_check

  if $win == true
    break
  end

end

if $win == true 
  puts 'You figured it out!'
else
  puts 'better luck next time...'
end

