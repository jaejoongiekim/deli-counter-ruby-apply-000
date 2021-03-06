# Write your code here.
def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def line(katz_deli)
  line_array = []
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |value, index|
      line_array.push("#{index + 1}. #{value}")
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
