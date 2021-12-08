file_data = File.read('./Data/Day1.txt').split

increase_occurrence = 0

file_data.length.times do |index_a|
  index_b = index_a + 1
  index_c = index_b + 1
  index_d = index_c + 1
  set_a = file_data[index_a].to_i + file_data[index_b].to_i + file_data[index_c].to_i
  set_b = file_data[index_b].to_i + file_data[index_c].to_i + file_data[index_d].to_i
  if index_d >= file_data.length
    puts 'EoF'
    break
  end
  if set_a < set_b
    increase_occurrence += 1
  end
end

puts increase_occurrence