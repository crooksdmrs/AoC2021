file_data = File.read('Data/Day2.txt').split

coor = [0,0,0] # 0 = aim, 1 = X, 2 = Y

file_data.length.times do |index|
  next if index.odd?
  
  case file_data[index]
  when 'forward'
    coor[1] = coor[1] + file_data[index + 1].to_i
    coor[2] = coor[2] + (file_data[index + 1].to_i * coor[0])
  when 'up'
    coor[0] = coor[0] - file_data[index + 1].to_i
  when 'down'
    coor[0] = coor[0] + file_data[index + 1].to_i
  end
end

puts (coor[1]*coor[2])
