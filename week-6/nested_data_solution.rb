# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  [
    "inner",
    [
      "eagle", "par", ["FORE", "hook"]
    ]
  ] # close second
] # close first

p array[1][1][2][0]

# attempts:
# ============================================================
#


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {
  outer:
  {inner:
    {"almost" =>
      {3 => "congrats!"}
    }
  }
}

# hash = {:symbol: "asdfafd"}
p hash[:outer][:inner]["almost"][3]

# attempts:
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array:
                ["array",
                  {hash: "finished"}
                ]

              }

p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
#Using an enumerable method, modify the original array and add 5 to each number. Should this be destructive or not destructive based on the language?

number_array = [5, [10, 15], [20,25,30], 35]

#this works
p number_array.map! {|item|
  #if it's an array, map again
  if item.is_a? (Array)
    item.map! {|sub_item| sub_item += 5}
  #else add 5
  elsif item.is_a? (Integer)
    item += 5
  end
  }

p number_array.map! { |item|
(item.map! {|sub_item| sub_item += 5} if item.is_a? (Array)) || ((item += 5) if item.is_a? (Integer))
  }

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|word|

  if word.is_a? (String)
    p word += "ly"
  elsif word.is_a? (Array)
    word.map! {|sub_item|
      if sub_item.is_a? (String)
        p sub_item += "ly"
      elsif sub_item.is_a? (Array)
        sub_item.map! {|sub_sub_item|
          p sub_sub_item += "ly"
        }
      end
    }
  end
}

=begin

What are some general rules you can apply to nested arrays?
  It helps to reformat the arrays in a stacked formation so you can better see where the nesting starts

What are some ways you can iterate over nested arrays?
  You can use nested .each or .map loops.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used .map to execute the simple task of adding 5 or 'ly' to each element. We also refactored the if/elsif statements in the number_array iteration by using || operators

=end