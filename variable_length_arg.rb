def method1(one, two, three, **args)
  puts "#{one}"
  puts "#{two}"
  puts "#{three}"
  args.each do |key, val|
    puts "#{key} => #{val}"
  end
end

method1(1, 2, 3, {four: 4, five: 5})
