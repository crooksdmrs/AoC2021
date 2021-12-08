file_data_oxygen = File.read('Data/Day3.txt').split
file_data_CO2 = File.read('Data/Day3.txt').split

ones_array = []
zeros_array = []

one_count = 0
zero_count = 0


# oxygen
file_data_oxygen[0].length.times do |index_y|
  file_data_oxygen.length.times do |index_x|
    case file_data_oxygen[index_x][index_y]
    when '1'
      one_count += 1
      ones_array.push file_data_oxygen[index_x]
    when '0'
      zero_count += 1
      zeros_array.push file_data_oxygen[index_x]
    end
  end
  if one_count >= zero_count
    file_data_oxygen = file_data_oxygen - zeros_array
    if file_data_oxygen.length == 1
      break
    end
  else
    file_data_oxygen = file_data_oxygen - ones_array
    if file_data_oxygen.length == 1
      break
    end
  end
  one_count = 0
  zero_count = 0
  ones_array = []
  zeros_array = []
end

puts file_data_oxygen
puts file_data_oxygen[0].to_i(2)
puts '--------'

# CO2
file_data_CO2[0].length.times do |index_y|
  file_data_CO2.length.times do |index_x|
    case file_data_CO2[index_x][index_y]
    when '1'
      one_count += 1
      ones_array.push file_data_CO2[index_x]
    when '0'
      zero_count += 1
      zeros_array.push file_data_CO2[index_x]
    end
  end
  if zero_count <= one_count
    file_data_CO2 = file_data_CO2 - ones_array
    if file_data_CO2.length == 1
      break
    end
  else
    file_data_CO2 = file_data_CO2 - zeros_array
    if file_data_CO2.length == 1
      break
    end
  end
  one_count = 0
  zero_count = 0
  ones_array = []
  zeros_array = []
end

puts file_data_CO2
puts file_data_CO2[0].to_i(2)
puts '--------'
puts file_data_CO2[0].to_i(2)*file_data_oxygen[0].to_i(2)