require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sides_greater?
    [a, b, c].all?(&:positive?)
  end

  def tri_equality?
    a + b > c && b + c > a && a + c > b
  end
  
  def validate_triangle
    raise TriangleError unless sides_greater? && tri_equality?
  end

  def kind
    validate_triangle
    if @a == @b && @b == @c && @a == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    elsif @a != @b || @b != @c || @a != @c
      :scalene
    end

  end

  class TriangleError < StandardError
    "ERROR"
  end
end

































# attr_accessor :a, :b, :c

  # def initialize(a, b, c)
  #   @a = a
  #   @b = b
  #   @c = c
  # end

  # def sides_greater?
  #   if @a > 0 && @b > 0 && @c > 0
  #     true
  #   else
  #     false
  #   end
  # end

  # def sides_greater?
  #   [a, b, c].all?(&:positive?)
  # end

  # def tri_equality?
  #   a + b > c && b + c > a && a + c > b
  # end

  # def tri_equality?
  #   if a + b > c && b + c > a && a + c > b
  #     true
  #   else
  #     false
  #   end
  # end

  # def validate_triangle
  #   raise TriangleError unless tri_equality? && sides_greater?
  # end

  # def kind
  #   validate_triangle
  #   if @a == @b && @a == @c
  #     :equilateral
  #   elsif @a == @b || @a == @c || @b == @c
  #     :isosceles
  #   elsif @a != @b || @a != @c || @b != @c
  #     :scalene
  #   end
  # end

  # class TriangleError < StandardError
  #   'ERROR'
  # end
