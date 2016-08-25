values = []

File.foreach('weather.dat') do |line|
   values << line.split(" ")
end

spread = []

values.each do |line|
  spread << (values[line][1].to_i - values[line][2].to_i)
end


