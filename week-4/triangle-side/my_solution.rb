def valid_triangle? (side1, side2, side3)
  if side1 <= 0 || side2 <= 0 || side3 <= 0
    return false
  elsif side1 + side2 > side3 && side3 + side2 > side1 && side1 + side3 > side2
    return true
  else
    return false
  end
end



=begin
Need to test if a triangle has valid sides.

The result should be true false.

If the sides are valid then return true.
If the sides are not valid then return false

Valid sides include:
1. Check if all side lengths are equal
2. Check IF
  - a + b > c
  - a + c > b
  - b + c > a
3.



=end