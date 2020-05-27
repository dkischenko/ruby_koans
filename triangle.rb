# frozen_string_literal: true

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a == 0 && b == 0 && c == 0
    raise TriangleError, "Zero length doesn't make sense."
  end

  if a < 0 || b < 0 || c < 0
    raise TriangleError, "Negative length doesn't make sense."
  end

  raise TriangleError if a < c && b < c && a == b

  raise TriangleError if a == c && a < b && c < b

  return :equilateral if a == b && a == c

  if (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
    return :isosceles
  end

  return :scalene if a != b && a != c && b != c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
