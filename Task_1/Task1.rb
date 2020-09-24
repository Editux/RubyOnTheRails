#Problem 1: Find the length of the string
def length_finder(input_array)
  input_array.map {|element| element.length}
end

given = Array['Ruby','Rails','C42']
puts("Solution 1:")

puts(length_finder(given))
#Problem 2: Find non duplicate values in the array
def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end
given2 = Array[1,1,2,3,3]
puts("Solution 2:")
puts(non_duplicated_values(given2))

#Problem 3: Find the sum of cubes given range
def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end
a=1
b=3
puts("Solution 3:")
puts(sum_of_cubes(a,b))
