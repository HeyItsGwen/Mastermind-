# frozen_string_literal: true

# rubocop:disable Style/GlobalVars, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Lint/UselessAssignment

$color_arr = %w[red green blue yellow]
$win = false

def color_picker
  rand_array = Array.new(4) { $color_arr[rand(0..3)] }
end

def player_guess
  $guess_array = []

  guess = 0
  guess_num = %w[first second third fourth]

  4.times do
    puts "What is your #{guess_num[guess]} guess? (red, green, blue, or yellow)"

    $guess_array << gets.chomp

    guess += 1
  end
end

def match_check
  $win = true if $guess_array == $random_colors
  match_arr = []

  $guess_array.each do |x|
    $random_colors.each do |y|
      match_arr << x if x == y
    end
  end

  if match_arr.length.positive?
    place = 0
    4.times do
      puts "#{$random_colors[place]} is in the right place!" if $guess_array[place] == $random_colors[place]

      if $guess_array[place] != $random_colors[place] && $random_colors.any?($guess_array[place])
        puts "#{$guess_array[place]} is the right color in the wrong place!"
      end

      place += 1
    end
  else
    puts 'No matches!'
  end
end

# rubocop:enable Style/GlobalVars, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Lint/UselessAssignment
