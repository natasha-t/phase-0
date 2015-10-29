
# data structure --> hash; key/value pairs makes sense if we have a list item and quantity

#create list
# list = Hash.new

# # Add items to list
# list["lemonade"] = 2
# list["tomatoes"] = 3
# list["onions"] = 1
# list["ice cream"] = 4

# #remove lemonade from list
# list.delete("lemonade")

# #update ice cream quantity to 1
# list["ice cream"] = 1

# # print out list
# list.each { |key, value|
#   puts "#{key}: #{value}"
# }

# Refactored Solution

# Pseudocode
 # create method called new list
    # create a new hash, specify that it's empty
    # output: an empty hash

def new_list
  Hash.new
end

list = new_list
other_list = new_list
# Add an item with a quantity to the list
  # create method called add_quantity, two parameters: item (string), quantity (integer)
  # adds item as a key to the hash, and quantity as its value
  # output: list with item and quantity

def add_item_and_quantity (list_name, item, quantity)
 list_name[item] = quantity
 p list_name
end

dinner = "chicken"
add_item_and_quantity(list,dinner, 1)

#Remove item from list
  # create method called remove_item, two parameters: list_name, item
  # deletes item from list
  # output: list with the item removed

def remove_item (list_name, item)
  list_name.delete(item)
  p list_name
end

remove_item(list, dinner)


# Update quantities
  # create method called update_quantity, three parameters: list_name, item, quantity
  # updates quantity of item in list
  # output: list with updated quantity

def update_quantity(list_name, item, quantity)
  add_item_and_quantity(list_name, item, quantity)
end

update_quantity(list, dinner, 3)

# Print list
  # create method called print_list, 1 parameter: list_name
  # iterates through list and prints item and quantity
  # output: nicely laid out grocery list

def print_list (list_name)
  list_name.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

print_list(list)


grocery_list = new_list

add_item_and_quantity(grocery_list, "lemonade", 2)
add_item_and_quantity(grocery_list, "tomatoes", 3)
add_item_and_quantity(grocery_list, "onions", 1)
add_item_and_quantity(grocery_list, "ice cream", 4)

remove_item(grocery_list, "lemonade")

update_quantity(grocery_list, "ice cream", 1)

print_list(grocery_list)


#Reflection
# What did you learn about pseudocode from working on this challenge?
    # I learned that once you identify exactly what you want the input and output want to be, writing the code is easier
# What are the tradeoffs of using Arrays and Hashes for this challenge?
    # Hashes made more sense for this challenge because the data involved two values (item name and quantity), and storing those values can be done by a hash with its key/value pair setup. An array could have worked as well by keeping the item name and quantity as individual arrays within one larger list array, but sorting through that data and manipulating values may be harder since iteration in an array is linear; you'd have to use indexes and embedded index values, which can get unruly.
# What does a method return?
    # methods return different values depending on what it is. Some methods return arrays, a value, or key. If you're invoking methods within other methods then you have to keep track of what the invoked method returns; that will affect what the new method outputs
# What kind of things can you pass into methods as arguments?
    # In this exercise we passed in keys and values as arguments, you can pass any object as arguments like hashes/arrays
# How can you pass information between methods?
    # You can pass information between methods via their parameters; you can also invoke methods within other methods to incorporate return values from another method into a new method
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # We haven't had any exercises involving passing hashes as parameters or creating methods that make an empty object prior to this GPS so I'm now familiar with those concepts. What was also introduced was invoking a method within another method so you don't have to repeat blocks of code. I learned from a user-experience point of view, though a code block may run the same way for two methods, the function's name (like add_quantity and update_quantity) will mean different things to the user, so it's important to actually keep those methods separate.