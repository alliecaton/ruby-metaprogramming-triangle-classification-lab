require 'pry'
class Triangle

  attr_accessor :equlateral, :isosceles, :scalene

  def initialize(x, y, z)
    @x = x
    @y = y 
    @z = z
  end

  def kind
    is_triangle? 

    triangle= [@x, @y, @z].sort
    x = triangle[0]
    y = triangle[1]
    z = triangle[2]

    if (x == y && z) && (x && y && z > 0)
      :equilateral
    elsif (x == y && x > z) || (y == z && y > x)
      :isosceles
    elsif x != y && z
      :scalene  
    end
  end

  def is_triangle?
    if @x <= 0 && @y <= 0 && @z <= 0 
      raise TriangleError
    elsif @x + @y <= @z || @y + @z <= @x || @z + @x <= @y 
      raise TriangleError
    else 
      true
    end 
  end


  class TriangleError < StandardError
  end


end
