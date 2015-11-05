# Your Names
# 1) Brian
# 2) Natasha

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # hash of 3 items with serving size values
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # test if item_to_make is in the library
  # generate error message if test fails
  if !library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # pull value that corresponds to the key (serving size)
  serving_size = library[item_to_make]
  # figure out leftover ingredients
  leftover = order_quantity % serving_size
  min_order_size = order_quantity/serving_size

  # generate message whether you have leftover ingredients
  if leftover == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make " + min_order_size.to_s + " of #{item_to_make}, you have leftover ingredients to make #{leftover} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  It's important to first go through the code and understand what the program is doing. Once you've broken down the program and understood each step, only then can you work on making the code readable. It helps to fiddle around with the outputs and insert "puts" messages or 'p' to know exactly what is being outputted.
Did you learn any new methods? What did you learn about them?
  We tried to implement the .ceil method on min_order_size to not have 0 as an output if the order_quantity is less than the serving size; but it ended up not working out because the leftover ingredients number was thrown off.
What did you learn about accessing data in hashes?
  There are multiple ways to access data in hashes, some being simpler than others. The program initially used the .values_at method to access the food item's value, but that wasn't necessary since we could just access the value using the hash[key] notation.
What concepts were solidified when working through this challenge?
  Raising an ArgumentError, accessing data in hashes
=end