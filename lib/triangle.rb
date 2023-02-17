class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if invalid?
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def invalid?
    [a, b, c].min <= 0 || (a + b <= c) || (a + c <= b) || (b + c <= a)
  end

  class TriangleError < StandardError
  end
end
