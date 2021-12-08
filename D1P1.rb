file_data = File.read('./Data/Day1.txt').split

increase_occurrence = 0

file_data.length.times do |index|
  next_index = index + 1
  if next_index >= file_data.length
    puts 'EoF'
    break
  end
  if file_data[index].to_i < file_data[next_index].to_i
    increase_occurrence += 1
  end
end

puts increase_occurrence
