file_data = File.read('Data/Day2.txt').split

coor = [0,0]

puts file_data

file_data.length.times do |index|
  next if index.odd?

  case file_data[index]
  when 'forward'
    coor[1] = coor[1] + file_data[index + 1].to_i
  when 'up'
    coor[0] = coor[0] - file_data[index + 1].to_i
  when 'down'
    coor[0] = coor[0] + file_data[index + 1].to_i
  end
end

puts (coor[0]*coor[1])
