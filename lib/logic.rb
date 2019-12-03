$color_arr = ['red', 'green', 'blue', 'yellow'] 

def color_picker
  rand_array = Array.new(4){$color_arr[rand(0..3)]}
end

def player_guess
  $guess_array = []

  guess = 0
  guess_num = ['first','second','third','fourth']

  4.times {
    puts "What is your #{guess_num[guess]} guess? (red, green, blue, or yellow)"
    $guess_array << gets.chomp
    guess += 1
  }

  if $guess_array.any? != $color_arr.each{ |x| x }
    return 'wrong inputs!'
  end
end

def match_check
  puts 'You figured it out!' if $guess_array == $random_colors
  match_arr = []
  
  $guess_array.each { |x|
    $random_colors.each { |y| 
      match_arr << x if x==y
    }
  }

  if match_arr.length.positive?
    place = 0
    4.times {
      if $guess_array[place] == $random_colors[place]
        puts "#{$random_colors[place]} is in the right place!"
      end

      if $guess_array[place] != $random_colors[place] && $random_colors.any?($guess_array[place])
        puts "#{$guess_array[place]} is the right color in the wrong place!"
      end

      place += 1
    }
  else
    puts 'No matches!'
  end

end