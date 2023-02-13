class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError, "Sides of a triangle must have positive length."
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError, "Sides of a triangle must obey the triangle inequality."
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end



