# Task3.2: A program that calculates area, circumference ,diagonal and center coordinates of rectangle
# Author:Edita Komarova
require './rectangle'

rectangle =Rectangle.new

#Getting user input
puts 'Enter the length of Rectangle:'
#And converting them into integers
input_a= gets.chomp.to_i
puts 'Enter the width of Rectangle:'
input_b =gets.chomp.to_i
puts 'Enter the x corner value'
input_x =gets.chomp.to_i
puts 'Enter the y  corner value'
input_y = gets.chomp.to_i
#Getting program output
puts("Area:#{rectangle.GetArea(input_a,input_b)}")
puts("Circumference:#{rectangle.GetCircumference(input_a,input_b)}")
puts("Diagonal:#{rectangle.GetDiagonal(input_a,input_b)}")
puts("Center of X #{rectangle.GetCenterX(input_x)}")
puts("Center of Y #{rectangle.GetCenterY(input_y)}")