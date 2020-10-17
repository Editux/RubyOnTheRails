class Rectangle
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
end