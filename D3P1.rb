file_data = File.read('Data/Day3.txt').split

gamma = ''
epsilon = ''

one_count = 0
zero_count = 0

file_data[0].length.times do |index_y|
  file_data.length.times do |index_x|
    case file_data[index_x][index_y]
    when '1'
      one_count += 1
    when '0'
      zero_count += 1
    end
  end
  if one_count > zero_count
    gamma.concat('1')
    epsilon.concat('0')
  else
    gamma.concat('0')
    epsilon.concat('1')
  end
  one_count = 0
  zero_count = 0
end

puts gamma
puts gamma.to_i(2)
puts epsilon
puts epsilon.to_i(2)
puts '-----'
puts (gamma.to_i(2) * epsilon.to_i(2))
