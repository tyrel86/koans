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
class TriangleError < StandardError
end

def triangle(a, b, c)
	largest = get_largest( a,b,c )
	unless largest < (a+b+c-largest)
		raise TriangleError, "The two smaller sides must be larger than the largest size"
	end
	unless a > 0 and b > 0 and c > 0
		raise TriangleError, "All sides must be greater than 0"
	end
  if a == b and b == c
		:equilateral
	elsif a == b or b == c or c == a
		:isosceles
	else
		:scalene
	end
end

def get_largest( *a )
	largest = nil
	a.each do |e|
		largest = e unless largest
		largest = ( e > largest ) ? e : largest
	end
	largest
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
