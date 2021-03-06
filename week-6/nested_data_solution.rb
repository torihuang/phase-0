# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  x.is_a?(Integer) ? x*5 : x.map! {|y| y * 5}
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.is_a?(Array)
    x.map! do |y|
      if y.is_a?(Array)
        y.map! do |b|
          b + "ly"
        end
      else y + "ly"
      end
    end
  else x + "ly"
  end
end

p startup_names

=begin

REFLECTION

What are some general rules you can apply to nested arrays?
With nested arrays, you can access them by simply adding more [] on to the end of the array.

What are some ways you can iterate over nested arrays?
You can iterate over nested arrays using enumerable methods - particularly #each, #map, #select.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We utilized #map!. While I am familiar with #map, I do not have much experience with the destructive method yet!

=end