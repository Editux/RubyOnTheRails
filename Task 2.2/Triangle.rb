#Task 2.2 : The program find the Area, Circumference,The Center of coordinates X and Y of Rectangle
# Author: Edita Komarova

#method to get Area of Rectangle
def GetArea (a,b)
  area=a*b
end
#method to get Circumference of Rectangle
def GetCircumference(a,b)
  circumference= 2*a+2*b
end
#method to get Diagonal of Rectangle
def GetDiagonal(a,b)
  diagonal=Math.sqrt((a*a)+(b*b))
end
#method to get the center of x coordinate
def GetCenterX(x)
  centerX=(x+0)/2
end
#method to get the center of y coordinate
def GetCenterY(y)
  centerY=(y+0)/2
end
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
puts("Area:#{GetArea(input_a,input_b)}")
puts("Circumference:#{GetCircumference(input_a,input_b)}")
puts("Diagonal:#{GetDiagonal(input_a,input_b)}")
puts("Center of X #{GetCenterX(input_x)}")
puts("Center of Y #{GetCenterY(input_y)}")
