require 'pry'

def hello(array)
  i = 0
  out_array = []
  while i < array.length
    binding.pry
    out_array.push(yield(array[i]))
    i += 1
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
