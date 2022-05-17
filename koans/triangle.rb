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
  #raise TriangleError, "why the exception happened"

  a, b, c = [a, b, c].sort
  raise TriangleError, "Not a valid triangle" if a <= 0 || a + b <= c

  if a == b && b == c
    return :equilateral
  elsif a==b || b==c || a==c
    return :isosceles
  else
    return :scalene

  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

=begin


def triangle(a, b, c)
  [a, b, c].permutation do |sides|
    raise TriangleError unless sides[0] + sides[1] > sides[2]
  end
  case [a,b,c].uniq.size
    when 3; :scalene
    when 2; :isosceles
    when 1; :equilateral
  end
end

=end
